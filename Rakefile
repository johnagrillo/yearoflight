require 'yaml'

pics = YAML.load(File.read("pics.yaml"))
task :default do

  puts "<h1>2025 - The Year of Light</h1>"
  

  count = pics.size 
  pics.each do |pic|
    puts "<hr>"
    puts "<span>"

    date = pic["date"]
    
    puts "<h2> " + date.strftime("%b %d --- Day %-j ---  " ) 
    count = count -1
    puts pic["description"] * "</br>" + "</h2>"
    pic["image"].each do |i|
      puts "<a href=\"#{i}.jpg\">"
      puts "<img src=\"#{i}.jpg\" height=\"200\">"
      puts "</a>"
    end  
    puts "</span>"
  end
    

end
