Dir.chdir '/Users/Greg/Desktop/Thumb Drive In'

sheet_names = Dir['/Users/Greg/Desktop/Thumb Drive Out/**/*.xlsx']

puts "What do you want to call this batch?"
print "> "
batch_name = gets.chomp
puts
print "Downloading #{sheet_names.length} files: "

sheet_number = 1
sheet_names.each do |name|
  print '.' 
  
  new_name = if sheet_number < 10
    "#{batch_name}0#{sheet_number}.xlsx"
  else
    "#{batch_name}#{sheet_number}.xlsx"
  end
  
  File.rename name, new_name
  
  sheet_number = sheet_number + 1
end

puts
puts "Donzo!"