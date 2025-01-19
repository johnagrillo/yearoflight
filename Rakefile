require 'yaml'

pics = YAML.load(File.read("pics.yaml"))
task :default do

  puts "<h1> The Year of Light</h1>"
  
  pics.each do |pic|
    puts "<br>"
    puts "<hr>"
    puts "<h2>" + pic["date"].to_s + "</h2>"
    puts "<h2>" + pic["description"].to_s + "</h2>"
    puts "<span>"
    pic["image"].each do |i|
      puts "<a href=\"#{i}.jpg\"><img src=\"#{i}.jpg\" height=\"300\">"
    end  
    puts "</span>"
  end
    

end
