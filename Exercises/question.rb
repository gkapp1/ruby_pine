def ask(question)
  while true 
    puts question
    puts
    print "> "
    reply = gets.chomp.downcase
    
    if reply == "yes"
      return true
    elsif reply == "no"
      return false
    else
      puts "Please answer \"yes\" or \"no\"."
    end
  end
end

puts "Hello, and thank you for taking this survey."
puts

ask "Do you like eating tacos?"
ask "Do you like eating burritos?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like eating chimichangas?"
ask "Do you like eating sopapillas?"
puts "Just a few more questions..."
ask "Do you like drink horchata?"
ask "Do you like eating flautas?"
puts
puts "DEBRIEFING:"
puts "Thank you for taking this survey."
puts "We ACTUALLY wanted to know if you wet the bed."

if wets_bed == true
  puts "Sounds like you do..."
elsif wets_bed == false
  puts "Sounds like you don't..."
else 
  puts "I don't know what's going on there."
end

puts "Sweet - that helps. Thanks!"
