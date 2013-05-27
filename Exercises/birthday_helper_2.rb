filename = 'birthday_calendar.txt'

names = open(filename).map { |line| line.split(',')[0] }

months_days = open(filename).map { |line| line.split(',')[1] }
months_days.collect{|x| x.strip!}

months = months_days.map { |line| line.split(' ')[0] }
days = months_days.map { |line| line.split(' ')[1] }

years = open(filename).map { |line| line.split(',')[2] }
years.collect{|x| x.strip!}

i = 0

list_length = names.length

birthdays_this_year = []
birthdays_next_year = []

i = 0
while i < list_length
  birthdays_this_year[i] = Time.local(Time.now.year, months[i], days[i])
  birthdays_next_year[i] = Time.local(Time.now.year + 1, months[i], days[i])
  i = i + 1
end

next_birthday = []

i = 0
while i < list_length
  if birthdays_this_year[i] > Time.now
    next_birthday[i] = birthdays_this_year[i]
  else
    next_birthday[i] = birthdays_next_year[i]
  end
  i = i + 1
end


age_at_next_birthday = []

i = 0
while i < list_length
  age_at_next_birthday[i] = next_birthday[i].year.to_i - years[i].to_i
  i = i + 1
end

next_birthday_hash = {}

i = 0
while i < list_length
  next_birthday_hash[names[i]] = months_days[i].to_s + ", " + next_birthday[i].year.to_s
  i = i + 1
end

age_at_next_birthday_hash = {}

i = 0
while i < list_length
  age_at_next_birthday_hash[names[i]] = age_at_next_birthday[i].to_s
  i = i + 1
end

puts "Hey, give me a name..."
print "> " 
user_name = gets.chomp

if next_birthday_hash[user_name] == nil
  puts "I'm sorry, that name is not recognized. Please run this program again."
else
  puts "That person's next birthday will be " + next_birthday_hash[user_name] + "."
  puts "That person will be " + age_at_next_birthday_hash[user_name] + " years old on that day."
end

# Some ideas for cleaning this up -
# Use capitalize on both the user input and feed in from text file to ensure capitalization won't screw things up
# This makes assumption that every user has all pieces of data (otherwise might get offset when assigning name 1 to birthday 1...not sure if there is a good way to test for that)