require_relative "frequencies"

text = File.open("dummy.txt").read.strip

# p text
words = frequencies(text)

words.sort_by{|word, frequency| -frequency}.each do |w, f|
  puts "#{f} : #{w}"
end
