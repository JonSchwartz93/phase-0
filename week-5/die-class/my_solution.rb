# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: Die class is initialized with some number of sides
# Output: A random number
# Steps: 
	# 1) DEFINE class "Die" 
	# 2) DEFINE intialize method for class "Die" that takes one argument, "sides"
	# 3) IF number of sides is < 1, raise an argument error that
	# 4) Create an instance variable for "sides"
	# 5) DEFINE instance method "sides"
	# 6) DEFINE instance method "roll" which returns a random number between 1 (minimum # of sides) and the maximum number of sides as specified when the intialize(sides) method is called.

# 1. Initial Solution
=begin
class Die
  def initialize(sides)
	if sides < 1
  		raise ArgumentError.new("Illegal Die")
    end
    @sides = sides 
    #instance variable "sides"
  end

  def sides
  	return @sides
  end

  def roll
  	return rand(1..@sides) 
  	#returns a random number between 1 and 6
  end
end
=end

# 2. Refactored Solution

class Die	
  attr_reader :sides 
  #added a 1-line attribute reader method that consolidates the original 3-line "sides" method.
  def initialize(sides)
	raise ArgumentError.new("Illegal Die") if sides < 1 
	#consolidated "if" statement onto one line for readability
    @sides = sides
  end

  def roll
  	return rand(1..@sides) 
  	#returns a random number between 1 and 6
  end
end

die = Die.new(6)
puts die.roll

# 3. Reflection
# What is an ArgumentError and why would you use one?
# An ArgumentError is an error displayed to the user that notifies them if their argument does not meet certain criteria. In this case, an ArgumentError appears if the number of sides passed to "Die.new()" is less than 1 (aka - 0 or a negative integer).

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#The new Ruby method that I implemented in my solution to this challenge is "rand". This method returns a random integer within the stated range in this case 1 - @sides, sides being the specified number of sides in Die.new() ).

# What is a Ruby class?
# Ruby classes are special objects that have the ability to create new objects (referred to as instances). Creating a class allows you to modify it however you choose by adding methods to it, passing it to other objects as a method argument, and doing anything else you might do with an object.

# Why would you use a Ruby class?
# Defining a Ruby class lets you group/organize behaviors (methods) into convenient bundles so that you can quickly create many objects that behave essentially the same way. Classes usually exist for the purpose of being instantiated (aka - having objects create that are instances of the said class).

# What is the difference between a local variable and an instance variable?
# Before diving into the differences between local and instance variables, it is important to understand why we use instance variables. Instace variables help us avoid "hard-coding" values into every object and instead tells different objects that they have different values, which in other words provides flexibility. Instance variables differ from local variables in that their name always starts with a single "@" symbol, which enables us to recognize an instance variable at a glance. Additionally, instance variables are only visible to the object to which they belong. Furthermore, an instance variable initialized in one method inside a class can be used by any method defined within that class (i.e. - flexibility).

# Where can an instance variable be used?
# An instance variable initialized in one method inside a class can be used by any method defined within that class, which suggests that such variables are much more flexible than the average local vaiable.