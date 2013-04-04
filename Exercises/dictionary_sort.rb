require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

open(WORD_URL) {|f| 
  f.each_line {|word| WORDS.push(word.downcase.chomp)}
}

def dictionary_sorter(array)
  
  downcase_array = []
  
  j =0
  x = array.length
  while j < x
    downcase_array[j] = array[j].downcase
    j = j + 1
  end
  
  sorted_words = []
  
  while downcase_array != []
    n = downcase_array.length - 1
    i = 0
    current_position = 0
    current_winner = downcase_array[i]
    while i < n
      if current_winner < downcase_array[i+1]
        current_winner = current_winner
        current_position = current_position
      else
        current_winner = downcase_array[i+1]
        current_position = i + 1
      end
      i = i + 1
    end
    sorted_words.push(array[current_position])
    downcase_array.delete_at(current_position)
    array.delete_at(current_position)
  end
  puts sorted_words
end
  
dictionary_sorter(WORDS)

puts "-------" * 5

random_words = ["Zebra","cat","dog","apple", "cat", "banana","charlie","finger","animal","cat", "puppy"]
dictionary_sorter(random_words)