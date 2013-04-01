puts
puts "You are having a conversation with your grandma."
puts "She is hard of hearing, so unless you yell (in all caps) she won't be able to hear."

while true
  
  puts "What do you want to ask or tell her?"
  print "> "
  user_input = gets.chomp
  
  if (user_input == "BYE") or (user_input == "BYE.") or (user_input == "BYE!")
    puts "Grandma understood that. She let's you walk away."
    break
  elsif user_input.upcase == user_input
    rand_year = rand(21) + 1930
    puts "Grandma says: 'NO, NOT SINCE #{rand_year}!'"
  else
    puts "Grandma says: 'HUH?! SPEAK UP, SONNY!'"
  end
  
end