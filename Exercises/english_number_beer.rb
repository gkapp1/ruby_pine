def english_number(number)
  
  if number < 0
    puts "Please enter a number that is not negative."
  elsif number == 0
    print "zero"
  end
  
  num_string = ""
  
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
                
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",  "eighteen", "nineteen"]
                  
  remainder = number
  write  = number/1000000000000
  remainder = number - write * 1000000000000
  
  if write > 0
    trillions = english_number(write)
    num_string = num_string + trillions + " trillion"
    if remainder > 0
      num_string = num_string + " "
    end
  end
  
  write  = remainder /1000000000
  remainder = remainder - write * 1000000000

  if write > 0
    billions = english_number(write)
    num_string = num_string + billions + " billion"
    if remainder > 0
      num_string = num_string + " "
    end
  end

  write  = remainder /1000000
  remainder = remainder - write * 1000000

  if write > 0
    millions = english_number(write)
    num_string = num_string + millions + " million"
    if remainder > 0
      num_string = num_string + " "
    end
  end
  
  write  = remainder /1000
  remainder = remainder - write * 1000

  if write > 0
    thousands = english_number(write)
    num_string = num_string + thousands + " thousand"
    if remainder > 0
      num_string = num_string + " "
    end
  end
  
  write  = remainder /100
  remainder = remainder - write * 100

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
  
  write = remainder
  remainder = 0
  
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  
  num_string
end

def bottles_of_beer(bottles)
  i = bottles
  while i > 0
    bottles = english_number(i)
    puts "#{bottles} bottles of beer on the wall."
    puts "#{bottles} bottles of beer."
    puts "Take one down, pass it around."
    i = i - 1
    bottles = english_number(i)
    puts "#{bottles} bottles of beer on the wall!"
    puts
  end
  puts "Wow, I'm drunk!"
  puts "~~~~~~~~~~~~~~~"
end

bottles_of_beer(9999)