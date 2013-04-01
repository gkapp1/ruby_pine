puts "What is your name?"
print "> "
name = gets.chomp

if (name.capitalize == "Greg") or (name.capitalize == "Lisa")
  puts "Good name!"
else
  puts "I guess you got an alright name..."
end