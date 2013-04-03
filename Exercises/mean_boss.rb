puts 'What do YOU want?'
print "> "
request = gets.chomp
request_upcase = request.upcase

puts 'WHADDAYA MEAN "' + request_upcase + '"?!? YOU\'RE FIRED!!'
#puts "WHADDAYA MEAN \"#{request_upcase}\"?!? YOU\'RE FIRED!!" # More elegant