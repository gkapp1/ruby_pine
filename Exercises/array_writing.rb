require 'yaml'

filename = "Writing_Sample_2.txt"

test_array = 

["This is an array filed with text.",
"Three different elements in this array...",
"...and each one has a text string. Wow!"]

# New step - converts an array to a string:
test_string = test_array.to_yaml

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

# Mirror of our 'new step' - converts a string into an array
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)
