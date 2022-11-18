# ruby transferdiv.rb <json file with narrative in text.div> <fsh file to be updated> <new fsh file>

require "json"
require "byebug"

file = File.read(ARGV[0])
data_hash = JSON.parse(file)

newtext = data_hash["text"]["div"]
byebug
output = File.open(ARGV[2], 'w')

File.foreach(ARGV[1]).with_index do |line, line_num|
    if (line.include? "* text.div = ") then
        output.write("* text.div = #{newtext.dump}\n")
    else
        output.puts "#{line}"
    end
 end