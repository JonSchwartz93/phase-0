# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: Die class is initialized with some number of sides
# Output: A random number
# Steps:



# 1. Initial Solution
=begin
class Die
  def initialize(sides)
	if sides < 1
  		raise ArgumentError.new("Illegal Die")
    end
    @sides = sides #instance variable "sides"
  end

  def sides
  	return @sides
  end

  def roll
  	return rand(1..@sides) #returns a random number between 1 and 6
  end
end
=end
# 3. Refactored Solution

class Die
  def initialize(sides)
	raise ArgumentError.new("Illegal Die") if sides < 1 #consolidated "if" statement onto one line for readability
    @sides = sides
  end

  def sides
  	return @sides
  end

  def roll
  	return rand(1..@sides) #returns a random number between 1 and 6
  end
end

# 4. Reflection
# What is an ArgumentError and why would you use one?
# An ArgumentError is an error displayed to the user that notifies them if their argument does not meet certain criteria. In this case, an ArgumentError appears if sides is passed 0 arguments. 

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#The new Ruby method that I implemented in my solution to this challenge is "rand". This method returns a random integer within the stated range.

# What is a Ruby class?
# Ruby classes are special objects that have the ability to create new objects (referred to as instances). Creating a class allows you to modify it however you choose by adding methods to it, passing it to other objects as a method argument, and doing anything else you might do with an object.
# Why would you use a Ruby class?

# What is the difference between a local variable and an instance variable?

# Where can an instance variable be used?