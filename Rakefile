require 'yaml'

pics = YAML.load(File.read("pics.yaml"))
task :commit do

  sh "git add ."
  sh "git commit -m\"year of light\""
  sh "git push"
end


require 'rmagick'

task :thumbs do
  FileUtils.mkdir_p("thumbs")
  Dir.glob("*.jpg").each do |pic|
    imgm = Magick::Image::read(pic).first
    thumbm = imgm.resize_to_fit(300,200)
    
    thumbm.write("thumbs/#{pic}")
    
  end



  
  
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

        pic = "thumbs/#{i}.jpg"

        unless File.exist?(pic)
          $stderr.puts pic
          exit
        end         
        
        fh.puts "<a href=\"#{pic}\">"
        fh.puts "<img src=\"#{pic}.jpg\" height=\"200\">"
        fh.puts "</a>"
      end  
      fh.puts "</span>"
    end
  end

end
