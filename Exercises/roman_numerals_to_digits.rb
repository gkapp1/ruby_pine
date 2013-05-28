# This is pretty sloppy code, plus not sure it counts for all the edge cases...but it seems to be working for me.

# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000

puts "Please enter a Roman numberal for conversion to 'regular' digits. \nNote that this tool is only effective for numbers less than 4000."
print "> "
user_entry = gets.upcase.chomp

numeral_length = user_entry.length
running_sum = 0

i = 0
while i < numeral_length
  if user_entry[i] == "M"
    running_sum = running_sum + 1000
  elsif user_entry[i] == "D"
    running_sum = running_sum + 500
  elsif user_entry[i] == "C"
    running_sum = running_sum + 100
  elsif user_entry[i] == "L"
    running_sum = running_sum + 50
  elsif user_entry[i] == "X"
    running_sum = running_sum + 10
  elsif user_entry[i] == "V"
    running_sum = running_sum + 5
  elsif user_entry[i] == "I"
    running_sum = running_sum + 1
  else
    # This is the first check - it results in an error for all entries that use improper characters.
    # The next (potentially more likely error) is for when the characters are in the incorrect order.
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIt appears to contain characters we do not recognize. \nPlease try running this program again with another Roman numeral.")
  end
  i = i + 1
end

pairs = []

i = 0
while i < numeral_length
  pairs[i] = user_entry[i..i+1]
  i = i + 1
end

i = 0
while i < numeral_length
  if pairs[i] == "CM"
    running_sum = running_sum - 200
  elsif pairs[i] == "CD"
    running_sum = running_sum - 200
  elsif pairs[i] == "XC"
    running_sum = running_sum - 20
  elsif pairs[i] == "XL"
    running_sum = running_sum - 20
  elsif pairs[i] == "IX"
    running_sum = running_sum - 2
  elsif pairs[i] == "IV"
    running_sum = running_sum - 2

  elsif pairs[i] == "IL" || pairs[i] == "IC" || pairs[i] == "ID" || pairs[i] == "IM" || pairs[i] == "VX" || pairs[i] == "VL" || pairs[i] == "VC" || pairs[i] == "VD" || pairs[i] == "VM" || pairs[i] == "XD" || pairs[i] == "XM" || pairs[i] == "LC" || pairs[i] == "LD" || pairs[i] == "LM" || pairs[i] == "DM"
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIts characters appear to be in an undefined order. \nPlease try running this program again with another Roman numeral.")

  elsif pairs[i] == "DD" || pairs[i] == "LL" || pairs[i] == "VV"
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIts characters are paired up in unconventional way. \nPlease try running this program again with another Roman numeral.")
    
  else
    # Either this means there are no instances of a '9' or '4' OR it was written incorrectly
    # Check for this error elsewhere
    running_sum = running_sum
  end
  i = i + 1
end


i = 0
while i < numeral_length # CHANGE PAIRS TO USER_ENTRY
  if (user_entry[i] == "I") && ( (user_entry[i + 2] == "V") || (user_entry[i + 2] == "X") || (user_entry[i + 2] == "L") || (user_entry[i + 2] == "C") || (user_entry[i + 2] == "D") || (user_entry[i + 2] == "M") )
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIts characters appear to be in an undefined order. \nPlease try running this program again with another Roman numeral.")

  elsif (user_entry[i] == "V") && ( (user_entry[i + 2] == "X") || (user_entry[i + 2] == "L") || (user_entry[i + 2] == "C") || (user_entry[i + 2] == "D") || (user_entry[i + 2] == "M") )
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIts characters appear to be in an undefined order. \nPlease try running this program again with another Roman numeral.")

  elsif (user_entry[i] == "X") && ( (user_entry[i + 2] == "L") || (user_entry[i + 2] == "C") || (user_entry[i + 2] == "D") || (user_entry[i + 2] == "M") )
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIts characters appear to be in an undefined order. \nPlease try running this program again with another Roman numeral.")

  elsif (user_entry[i] == "L") && ( (user_entry[i + 2] == "C") || (user_entry[i + 2] == "D") || (user_entry[i + 2] == "M") )
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIts characters appear to be in an undefined order. \nPlease try running this program again with another Roman numeral.")

  elsif (user_entry[i] == "C") && ( (user_entry[i + 2] == "D") || (user_entry[i + 2] == "M") )
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIts characters appear to be in an undefined order. \nPlease try running this program again with another Roman numeral.")
 
  elsif (user_entry[i] == "D") && (user_entry[i + 2] == "M")
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nIts characters appear to be in an undefined order. \nPlease try running this program again with another Roman numeral.")

  elsif (user_entry[i] == user_entry[i + 1]) && (user_entry[i + 1] == user_entry[i + 2]) && (user_entry[i + 2] == user_entry[i + 3])
    abort("I'm sorry - something appears to be wrong - we do not recognize this numeral: \nThere are more than three of the same characters in a row. \nPlease try running this program again with another Roman numeral.")
    
  else
  end
  i = i + 1
end

puts running_sum

