require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = [] 

open(WORD_URL) {|f| 
  f.each_line {|word| WORDS.push(word.downcase.chomp)}
}

def sorter(array)
  
  sorted_words = []
  
  while array != []
    n = array.length - 1
    i = 0
    current_winner = array[i]
    current_position = i
    while i < n
      if current_winner < array[i+1]
        current_winner = current_winner
        current_position = current_position
      else
        current_winner = array[i+1]
        current_position = i + 1
      end
      i = i + 1
    end
    sorted_words.push(current_winner)
    array.delete_at(current_position)
  end
  puts sorted_words
end
  
sorter(WORDS)

puts "-------" * 5

random_words = ["zebra","cat","dog","apple", "cat", "banana","charlie","finger","animal","cat", "puppy"]
sorter(random_words)