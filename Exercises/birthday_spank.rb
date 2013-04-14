puts "Hey There! I want to find out how old you are."

puts "What year were you born?"
print "> "
year = gets.chomp.to_i

puts "What month were you born?"
puts "Please tell me in numerical form -- i.e., January is 1, February is 2, and so on)?"
print "> "
month = gets.chomp.to_i

puts "On what day of the month were you born?"
puts "Again, please just give me the number, such that first day of the month is 1, second is 2, etc.)"
print "> "
day = gets.chomp.to_i

birthday = Time.local(year, month, day)
seconds_old = Time.now - birthday
SECONDS_IN_YEAR = 60*60*24*365.25

years_old = seconds_old / SECONDS_IN_YEAR

puts "That means you are #{years_old} years old."
puts "And now you get a spanking for each birthday you ever had:"

i = 1

while i < years_old
  puts "SPANK!"
  i = i + 1
end
  


