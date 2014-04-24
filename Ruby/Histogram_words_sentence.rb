puts "Text input: "
text = gets.chomp

words = text.split
frequencies = Hash.new(0)

words.each do |wordkey|
    frequencies[wordkey] += 1
end

puts frequencies

frequencies = frequencies.sort_by do |key, count|
    count
end
frequencies.reverse!

frequencies.each do |key, count|
    puts key+" "+count.to_s
end