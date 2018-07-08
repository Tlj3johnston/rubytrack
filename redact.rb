puts "Enter the non-redacted text please:"
text = gets.chomp
puts "Enter the word(s) you'd like to redact please:"
redact = gets.chomp
final = []
set = false

words = text.split (" ")
noShow = redact.split (" ")

words.each do |x|
    noShow.each do |q|
        if x.downcase == q.downcase
        final.insert(-1, "REDACTED ")
        set = true
        end
    end
final.insert(-1, "#{x} ") unless set
set = false
end

final.each {|x| print x}
puts ""
