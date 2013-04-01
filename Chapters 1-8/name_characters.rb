puts "Hello and nice to meet you."
puts "Can you please tell me your full name?"
print "> "
name = gets.chomp
name_length = name.length
name_no_spaces = name.gsub(/ / , "")
name_no_spaces_length = name_no_spaces.length

puts "Cool, thanks #{name}!"
puts "Did you know that your name contains #{name_length} characters?"
puts "Note that characters include spaces -- that's why it may have looked long to you!"
puts "If you get rid of the spaces, your name is just #{name_no_spaces_length} characters (letters and symbols) long."