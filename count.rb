# Counts occurrences of ~/.bash_history and puts results in desc order - by @rexfeng 2012

bash_history = File.expand_path('~/.bash_history')
file = File.new(bash_history, "r")

history = []
while (line = file.gets)
	history << line
end

file.close

count = Hash.new(0)
history.each {|v| count[v.chomp] += 1}
count.sort_by {|k,v| v}.reverse.each {|k,v| puts "[#{v} times]: #{k}"}