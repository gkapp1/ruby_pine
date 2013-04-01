puts 1+2

# Hours in a year
hours_in_year = 24 * 365
puts "There are #{hours_in_year} hours in a year."

# Minutes in a decade
minutes_in_decade = hours_in_year * 60 * 10
puts "There are #{minutes_in_decade} minutes in a decade."

# Age in seconds
seconds_in_year = 60 * 60 * 24 * 365
age = 27.5
age_in_seconds = age * seconds_in_year
puts "I am #{age_in_seconds} seconds old."

# Author's Age
author_age_in_seconds = 1025000000
author_age_in_years = author_age_in_seconds / seconds_in_year
puts "The author is #{author_age_in_years} years old."