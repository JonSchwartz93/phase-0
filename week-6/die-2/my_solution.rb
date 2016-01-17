# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Randomly returns one of the strings from the given array
# Steps:
# 1) DEFINE Die Class
# 2) DEFINE Initialize(labels) method for Die Class
# 	3) IF the Die Class is passed an empty array, RAISE an ArgumentError
# 	4) DEFINE instance variable @sides
# 5) DEFINE instance method for sides
# 6) DEFINE instance method for roll which returns a random side from the array of strings


# Initial Solution:

# class Die
#   def initialize(sides)
#   	if sides == [] then raise ArgumentError.new("Die does not have enough sides")
#   	end
#   	@sides = sides
#   end

#   def sides
#   	return @sides.length
#   end

#   def roll
#   	return @sides.sample
#   end
# end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# p die.sides
# p die.roll

# Refactored Solution:

class Die
  def initialize(sides)
  # consolidate this conditional statement into one line for readability
  	raise ArgumentError.new("Die does not have enough sides") if sides == []
  	@sides = sides
  end

  def sides
  	return @sides.length
  end

  def roll
  	return @sides.sample
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll

# Reflection:
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# There were very few differences between this die class and the last one. The primary difference between the two is that this one takes an array of strings as its input, while the previous one takes an array of integers as its input. That being said, the logic was essentially the same.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# This exercise illustrates that code that is generalized can be used in a variety of ways. Therefore, it is best practice to write code that can be applied to different situations.

# What new methods did you learn when working on this challenge, if any?
# '.sample' = This is an Array method that takes an array as its input and returns a random element from that array.

# What concepts about classes were you able to solidify in this challenge?
# I was able to solidify my understanding of how to define a class as well as how to implement ArgumentErrors, instance variables, and instance methods. However, I am still a bit shaky on implementing attributes (i.e. - attr_reader, attr_writer, etc.) into my code.