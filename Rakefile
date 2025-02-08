require 'yaml'

pics = YAML.load(File.read("pics.yaml"))
task :commit do

  sh "git add ."
  sh "git commit -m\"year of light\""
  sh "git push"
end
task :default do

  File.open("index.html","w") do |fh|
    fh.puts "<h1>2025 - The Year of Light</h1>"
  

    count = pics.size 
    pics.each do |pic|
      fh.puts "<hr>"
      fh.puts "<span>"
      
      date = pic["date"]
      
      fh.puts "<h2> " + date.strftime("Day %-j --- %b %d ---  " ) 
      count = count -1
      fh.puts pic["description"] * "</br>" + "</h2>"
      pic["image"].each do |i|

        unless File.exist?("#{i}.jpg")
          $stderr.puts i
          exit
        end         
        
        fh.puts "<a href=\"#{i}.jpg\">"
        fh.puts "<img src=\"#{i}.jpg\" height=\"200\">"
        fh.puts "</a>"
      end  
      fh.puts "</span>"
    end
  end
    
end
