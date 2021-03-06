Dir.chdir '/Users/Greg/Desktop/Craigslist/Chair'

sheets_names = Dir['/Volumes/NO NAME/**/*.{xlsx.XLSX}']

puts "What do you want to call this batch?"
batch_name = gets.chomp
print "> "
puts
print "Downloading #{sheet_names.length} files: "

sheet_number = 1
sheet_names.each do |name|
  print '.' 
  
  new_name = if sheet_number < 10
    "#{batch_name}0#{sheet_number}.jpg"
  else
    "#{batch_name}#{sheet_number}.jpg"
  end
  
  File.rename name, new_name
  
  sheet_number = sheet_number + 1
end

puts
puts "Donzo!"