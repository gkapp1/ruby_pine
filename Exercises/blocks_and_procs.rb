# Basic intro to the concept of procs (procedures stored in variables)

toast = Proc.new do
  puts "Cheers!"
end

toast.call
toast.call
toast.call

# Proc which can act on a string being passed to it

do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call "Lumosity"
do_you_like.call "Ruby"
do_you_like.call "Game of Thrones"

# Proc which will be run a number of times based on method it is within

def maybe_do some_proc
  if rand(2) == 0 # 50 / 50 chance of being true
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

maybe_do toast
maybe_do toast
twice_do toast

# Conditional proc

def do_until_false first_input, some_proc
  input = first_input
  output = first_input
  
  while output
    input = output
    output = some_proc.call input
  end
  
  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
  array.pop
  array.push last_number * last_number
  array.push last_number - 1
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares)          # Prints out each element in the array on a new line.
puts do_until_false([5], build_array_of_squares).to_s     # Converts full array to a string and prints out.
puts do_until_false("Hello", always_false)