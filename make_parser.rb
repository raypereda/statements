# f = File.open('2018 MM_STMXT (Statement Extract Module).txt','r')
# f.each do |line|
#   if line.include? ') Record'
#     name = line[0, line.index('(')]
#     puts name
#     puts line
#     break
#   end
# end

text = File.read('input.txt').split("\n\n")
text.each do |paragraph|
  if paragraph.include? ') Record'
    lines = paragraph.split("\n")
    record = {}
    # i = 0
    # while i < lines.size
    #   if i == 0 
    #     line = lines[i]
    #     e = line.index(' (')
    #     if not e 
    #       next
    #     end
    #     puts e
    #     record[:name] = line[0, e]
    #     break
    #   end
    #   i += 1
    # end
    record[:name] = lines[0]
    puts record
  end
end