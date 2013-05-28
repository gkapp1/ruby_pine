# A very rudimentary example of how a programmer can define his or her own classes.
# Initialize, instance variables, and common method syntax are all featured...

class Die
  
  def initialize
    @number_showing = 1
  end
  
  def roll
    @number_showing = 1 + rand(6)
  end
  
  def cheat
    @number_showing = 6
  end

  def user_cheat
    puts "Hey buddy -- what do you want to roll? I know magic!"
    print "> "
    @number_showing = gets.chomp.to_i
  end
  
  def showing
    @number_showing
  end
end

die = Die.new
puts die.showing
die.roll
puts die.showing
puts die.showing
die.cheat
puts die.showing
puts die.showing
die.user_cheat
puts "What do you know? You rolled a #{die.showing}!"
puts die.showing