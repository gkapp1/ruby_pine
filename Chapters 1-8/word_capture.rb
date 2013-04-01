puts; puts
puts "Please types in some words. For each word you type, hit enter."
puts "When you're done entering words, just hit the enter key without typing anything."
puts "We'll then return all your words back to you, sorted in alphabetical order."
puts; puts

words = []

while true
  print "> "
  word_entry = gets.downcase.chomp
  if word_entry == ""
    break
  else
    words.push word_entry
  end
end

puts words.sort