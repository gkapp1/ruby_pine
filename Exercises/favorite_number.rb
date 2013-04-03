puts "Hey man, what's your favorite number?"
print "> "
favorite_number = gets.chomp

puts "Cool but look at this: "
favorite_number = favorite_number.to_i + 1
puts "How about your new favorite number becomes " + favorite_number.to_s + "?"
#puts "How about your new favorite number be #{favorite_number}?" #Sweet Alternative...
puts "That is BIGGER, BETTER, AND BADDER -- What do you think?"