# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000

output = []
puts "Please enter an integer that you'd like converted to old-school Roman numerals."
puts
print "> "
reply = gets.chomp.to_i

# Tests to see if too large for this calculator
if reply > 3000
  puts "Sorry - the number is too big to convert : ( -- try a lower one."
end

# Tests for determining how many "M's"
if reply / 2000 >= 1 # two thousand or greater
  output.push("M","M")
  reply = reply % 2000
elsif reply / 1000 >= 1 # one thousand or greater
  output.push("M")
  reply = reply % 1000
else
  reply = reply
end
  
# Tests for determining how many "D's"
if reply / 500 >= 1 # remainder 500 or greater
  output.push("D")
  reply = reply % 500
else
  reply = reply
end

# Tests for determining how many "C's"
if reply / 100 >= 4 # remainder 400 or greater
  output.push("C","C","C","C")
  reply = reply % 400
elsif reply / 100 >= 3 # remainder 300 or greater
    output.push("C","C","C")
    reply = reply % 300
elsif reply / 100 >= 2 # remainder 200 or greater
    output.push("C","C")
    reply = reply % 200
elsif reply / 100 >= 1 # remainder 100 or greater
    output.push("C")
    reply = reply % 100
else
  reply = reply # remainder less than 100
end

# Tests for determining how many "L's"
if reply / 50 >= 1 # remainder 50 or greater
  output.push("L")
  reply = reply % 50
else
  reply = reply # remainder less than 50
end

# Tests for determining how many "X's"
if reply / 10 >= 4 # remainder 40 or greater
  output.push("X","X","X","X")
  reply = reply % 40
elsif reply / 10 >= 3 # remainder 30 or greater
    output.push("X","X","X")
    reply = reply % 30
elsif reply / 10 >= 2 # remainder 20 or greater
    output.push("X","X")
    reply = reply % 20
elsif reply / 10 >= 1 # remainder 10 or greater
    output.push("X")
    reply = reply % 10
else
  reply = reply # remainder less than 10
end

# Tests for determining how many "V's"
if reply / 5 >= 1 # remainder 5 or greater
  output.push("V")
  reply = reply % 5
else
  reply = reply # remainder less than 5
end

# Tests for determining how many "I's"
if reply == 4 # remainder 4 or greater
  output.push("I","I","I","I")
elsif reply == 3 # remainder 3 or greater
    output.push("I","I","I")
elsif reply == 2 # remainder 2 or greater
    output.push("I","I")
elsif reply == 1 # remainder 1 or greater
    output.push("I")
else
  reply = reply # remainder equal to zero
end

puts output.join("")