def grandfather_clock &block
  h = Time.new.hour
  if h >= 13
    h = h - 12
  else
    h = h
  end
  h.times do
    block.call
  end
end

grandfather_clock do
    puts "DONG!"
end

grandfather_clock do
  number = 1 + 1
  puts "1 + 1 equals #{number}."
end