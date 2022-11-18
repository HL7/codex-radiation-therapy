# run ._genonce.sh
# cd ../CapStatement
# python3 R4CapStatement_NarrativeMaker.py CapabilityStatement-CodexRTServerCapabilityStatement.json ../Codex-Radiation-Therapy/output
# ruby transferdiv.rb <json file with narrative in text.div> <fsh file to be updated> <new fsh file>
# ruby tools/transferdiv.rb ../CapStatement/Narrative-CapabilityStatement-CodexRTServerCapabilityStatement.json input/fsh/DEF_CapStmt.fsh DEF_CapStmt.fsh

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