def english_number(number)
  
  if number < 0
    puts "Please enter a number that is not negative."
  elsif number == 0
    puts "zero"
  end
  
  num_string = ""
  
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
                
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",  "eighteen", "nineteen"]
                  
  remainder = number
  write  = number/100
  remainder = number - write * 100
  
  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + " hundred"
    if remainder > 0
      num_string = num_string + " "
    end
  end
  
  write = remainder/10 #0
  remainder = remainder - write * 10 #1
  
  if write > 0
    if ((write == 1) && (remainder > 0))
      # Since we can write 'ten-two' instead of 'twelve', 
      # we have to make exceptions for the teens
      num_string = num_string + teens[remainder-1]
      remainder = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    
    if remainder > 0
      num_string = num_string + "-"
    end
  end
  
  write = remainder #1
  remainder = 0 #0
  
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  
  num_string
end

puts english_number(1)
puts english_number(100)
puts english_number(101)
puts english_number(199)
puts english_number(200)
  
  