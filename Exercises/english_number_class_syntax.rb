class Integer
  
  def to_eng
    if self == 1
      english = "one"
    else
      english = "not one"
    end
    
    english
  end
end

puts 1.to_eng
puts 2.to_eng