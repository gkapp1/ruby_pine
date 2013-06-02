@profile_on = true

def profile block_description, &block
  if @profile_on == true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds."
  else
    block.call
  end
    
end

profile "25000 doublings" do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number} is the number you get after doubling one 25,000 times over."
  puts "The number at 25000 doublings is #{number.to_s.length} digits long."
end