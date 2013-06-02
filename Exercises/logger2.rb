$logger_depth = 0

def log description, &block
  puts "   " * $logger_depth + "Beginning #{description}..."
  $logger_depth = $logger_depth + 1 
  result = block.call
  $logger_depth = $logger_depth - 1 
  puts "   " * $logger_depth + "...#{description} finished, returning: " + result.to_s
end

log "1 + 1 calculator", do
  log "Hello sayer", do
    "Hello!"
  end
  1 + 1
end


