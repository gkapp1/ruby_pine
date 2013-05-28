# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000

output = []
puts "Please enter an integer that you'd like converted to new-school Roman numerals."
print "> "
reply = gets.chomp.to_i

# Tests to see if too large for this calculator
if reply > 3000
  puts "Sorry - the number is too big to convert : ( -- try a lower one."
end

thousands = reply / 1000
remainder = reply % 1000
hundreds = remainder / 100
remainder = remainder % 100
tens = remainder / 10
ones = remainder % 10

if thousands == 2
  output.push("M","M")
elsif thousands == 1
  output.push("M")
end

if hundreds == 9
  output.push("C","M")
elsif hundreds == 8
  output.push("D","C","C","C")
elsif hundreds == 7
  output.push("D","C","C")
elsif hundreds == 6
  output.push("D","C")
elsif hundreds == 5
  output.push("D")
elsif hundreds == 4
    output.push("C","D")
elsif hundreds == 3
    output.push("C","C","C")
elsif hundreds == 2
    output.push("C","C")
elsif hundreds == 1
    output.push("C")
end

if tens == 9
  output.push("X","C")
elsif tens == 8
  output.push("L","X","X","X")
elsif tens == 7
  output.push("L","X","X")
elsif tens == 6
  output.push("L","X")
elsif tens == 5
    output.push("L")
elsif tens == 4
    output.push("X","L")
elsif tens == 3
    output.push("X","X","X")
elsif tens == 2
    output.push("X","X")
elsif tens == 1
    output.push("X")
end

if ones == 9
  output.push("I","X")
elsif ones == 8
  output.push("V","I","I","I")
elsif ones == 7
  output.push("V","I","I")
elsif ones == 6
  output.push("V","I")
elsif ones == 5
    output.push("V")
elsif ones == 4
    output.push("I","V")
elsif ones == 3
    output.push("I","I","I")
elsif ones == 2
    output.push("I","I")
elsif ones == 1
    output.push("I")
end 

puts output.join("")