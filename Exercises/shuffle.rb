require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = [] 

open(WORD_URL) {|f| 
  f.each_line {|word| WORDS.push(word.downcase.chomp)}
}

def shuffle(array)
  
  shuffled_words = []
  
  while array != []
    n = array.length
    i = 0
    while i < n
      m = array.length
      pull_position = rand(m) # Returns random integer in array 0..m-1
      shuffled_words.push(array[pull_position]) # Item pulled out and pushed into shuffled array
      array.delete_at(pull_position) # Old element killed in the original (unshuffled) array
      i = i + 1
    end
  end
  
  puts shuffled_words
end

shuffle(WORDS)

puts "-------" * 5

random_words = ["zebra","cat","dog","apple", "cat", "banana","charlie","finger","animal","cat", "puppy"]
shuffle(random_words)