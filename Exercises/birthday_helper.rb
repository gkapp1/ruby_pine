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

month_numbers = []

while i < list_length
  if months[i] == "Jan"
    month_numbers[i] = 1
  elsif months[i] == "Feb"
    month_numbers[i] = 2
  elsif months[i] == "Mar"
    month_numbers[i] = 3
  elsif months[i] == "Apr"
    month_numbers[i] = 4
  elsif months[i] == "May"
    month_numbers[i] = 5
  elsif months[i] == "Jun"
    month_numbers[i] = 6
  elsif months[i] == "Jul"
    month_numbers[i] = 7
  elsif months[i] == "Aug"
    month_numbers[i] = 8
  elsif months[i] == "Sep"
    month_numbers[i] = 9
  elsif months[i] == "Oct"
    month_numbers[i] = 10
  elsif months[i] == "Nov"
    month_numbers[i] = 11
  elsif months[i] == "Dec"
    month_numbers[i] = 12
  end
  i = i + 1
end

puts month_numbers

birthdays_this_year = []

i = 0
while i < list_length
  birthdays_this_year[i] = Time.local(Time.now.year, months[i], days[i])
  i = i + 1
end

puts birthdays_this_year


birthdays_hash = {}

i = 0
while i < list_length
  birthdays_hash[names[i]] = months_days[i] + ", " + years[i]
  i = i + 1
end

puts birthdays_hash