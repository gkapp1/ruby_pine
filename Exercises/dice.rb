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
