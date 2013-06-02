# Orange trees live for twenty years.
# Orange trees grow 1 foot per year.
# Orange trees get more productive as they grow - 1 orange is produced for every foot of height (starting at 3 feet tall).

class OrangeTree
  
  def initialize
    @height = 0     # in feet
    @age = 0        # in years
    @oranges = 0    # in oranges
  end
    
  def height
    puts "The tree is #{@height} feet tall."
  end
  
  def count_the_oranges
    puts "The tree currently has #{@oranges} oranges."
  end
    
  def pick_an_orange
    if @oranges >=55 1
      @oranges = @oranges - 1
      puts "You picked an orange. It's delicious. Now go wash your hands."
    else
      puts "I'm sorry. There are no more oranges left to pick."
    end
  end  
  
  def one_year_passes
    @age = @age + 1
    @oranges = 0      # All unpicked oranges fall to the ground. 
    if @age >= 3
      @oranges = @age # One orange for every year.
    else
      @oranges = 0    # Tree too young to support oranges
    end
    @height = @height + 1
    if @age >= 21
      puts "Your orange tree has grown old and died."
      puts "No more digital oranges for you, sucka."
      exit
    end
  end
end
    
    
    
tree = OrangeTree.new
tree.height

10.times do
  tree.one_year_passes
end

tree.height
tree.count_the_oranges

10.times do
  tree.pick_an_orange
end

tree.count_the_oranges