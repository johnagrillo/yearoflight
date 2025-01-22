require 'yaml'

pics = YAML.load(File.read("pics.yaml"))
task :default do

  puts "<h1> The Year of Light</h1>"
  

  count = pics.size 
  pics.each do |pic|
    puts "<hr>"
    puts "<span>"
    puts "Day # #{count}"
    count = count -1
        
    puts "<h2>" + pic["date"].to_s + " - "
    puts pic["description"] * "</br>" + "</h2>"
    pic["image"].each do |i|
      puts "<a href=\"#{i}.jpg\"><img src=\"#{i}.jpg\" height=\"300\"></a>"
    end  
    puts "</span>"
  end
    

end
