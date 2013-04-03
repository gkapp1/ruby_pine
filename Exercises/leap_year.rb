puts
puts "Give me a start year (consider BC years to be negative, such that 50BC == -50)."
print "> "
start_year = gets.chomp.to_i

puts
puts "Now give me an end year."
print "> "
end_year = gets.chomp.to_i

current_year = start_year
leap_years = 0

while current_year <= end_year

  if current_year % 400 == 0
    leap_years = leap_years + 1
  elsif (current_year % 4 == 0) and (current_year % 100 != 0) 
    leap_years = leap_years + 1
  else
    leap_years = leap_years
  end

  current_year = current_year + 1

end

puts "During the date ranges you selected (inclusive of the start year and end year), there will be exactly #{leap_years} leap years!"
  


