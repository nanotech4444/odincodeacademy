puts "Text of secret message"
text = gets.chomp
puts "Word to redact"
redact = gets.chomp

words = text.split(" ")

words.each do |eachword|
    if eachword != redact
        print eachword+" "
    else
        print "REDACTED "
    end
end