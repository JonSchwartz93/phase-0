# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode:

# Input: integer called "answer"
# Output: return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer
# Steps:
# 1) DEFINE GuessingGame Class
	# 2) DEFINE intialize method for GuessingGame Class with an integer called "answer".
	# 3) DEFINE instance method "guess" which takes an integer called guess as its input.
		# 4) RETURN :high if the guess is > answer
		# 5) RETURN :correct if the guess = answer
		# 6) RETURN :low if the guess is < answer
	# 7) DEFINE instance method "solved?"
		# 8) IF the most recent "guess" = :correct, RETURN true
		# 9) ELSE, RETURN false

# Initial Solution:

# class GuessingGame
#   def initialize(answer)
#     @answer = answer.to_i
#     @solved = false
#   end

#   def guess(guess)
#   	if guess > @answer
#   		@solved = false
#   		return :high
#   	elsif guess < @answer
#   		@solved = false
#   		return :low
#   	else
#   		@solved = true
#   		return :correct
#   	end
#   end

#   def solved?
# 	if @solved
#   		return true
#   	else
#   		return false
#   	end
#   end
# end

# game = GuessingGame.new(10)
# p game.solved?
# p game.guess(5)
# p game.guess(20)
# p game.solved?
# p game.guess(10)
# p game.solved?

# Refactored Solution:

class GuessingGame
  def initialize(answer)
    @answer = answer.to_i
    @solved = false
  end

  def guess(guess)
  	if guess > @answer
  		@solved = false
  		return :high
  	elsif guess < @answer
  		@solved = false
  		return :low
  	else
  		@solved = true
  		return :correct
  	end
  end

  def solved?
  	#used ternary operator to simplify code
	@solved ? (return true) : (return false)
  end
end

game = GuessingGame.new(10)
p game.solved?
p game.guess(5)
p game.guess(20)
p game.solved?
p game.guess(10)
p game.solved?

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables and methods represent the characteristics and behaviors of a real-world object in that they represent the inherent traits and actions of that object. In other words, instance methods are defined inside a class and intended for use by all instances of that class and thus do not belong to any one object. Similarly, instance variables enables individual objects to remember state (aka - information and data associated with those objects).

# When should you use instance variables? What do they do for you?
# Instace variables help us avoid "hard-coding" values into every object and instead tells different objects that they have different values, which in other words provides flexibility

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is the order in which a program is executed. In this challenge, I used conditional flow control which enables the program to execute depending on the truth of an expression. While refactoring, I had trouble implementing the ternary operator into my "guess" method, and thus kept the code the same as in the original solution.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols are string-like objects that also have a lot in common with integers. I think this code requires symbols to be returned because :high, :low, and :correct are strings that essentially act as integers. :high is basically a range of integers from :correct (exclusive) upward, while :low is a range of integers from :correct (exclusive) downward. Symbols are comprised of two main characteristics: immutability and uniqueness which act as their primary benefits. Immutability means that you cannot change/modify a symbol once it has been created. Uniqueness means that once a symbol is created, it always contains the same object_id, similar to how integers, say 100, is always 100. Strings, on the other hand, have different object_ids even for the same string that is created multiple times.