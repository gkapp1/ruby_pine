def log description, &block
  puts "Beginning #{description}..."
  result = block.call
  puts "...#{description} finished, returning: " + result.to_s
end

log "1 + 1 calculator", do
  log "Hello sayer", do
    "Hello!"
  end
  1 + 1
end


  