filename = "Writing_Sample.txt" 

test_string =   
"This is some text.
Just a lil' ol' text string.
Wow. Fun stuff..."

# Creates the file name listed above that prints out each line into the file
              
File.open filename, 'w' do |f| 
  f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)