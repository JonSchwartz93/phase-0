# Calculate the mode Pairing Challenge

# I worked on this challenge with Brian Bier.

# I spent [3.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array of numbers or strings

# What is the output? (i.e. What should the code return?)
# Array of the most frequent values ("mode")

# What are the steps needed to solve the problem?
# Define method
# Create a hash. Within the hash, assign each key a value of 0.
# Iterate through the array and compare each integer in the array with the key in the hash. If the number in the array is equal to the key, it should increment that key by 1.
# Which key has the highest value? This would determine which number occurs most frequently in the array.

# 1. Initial Solution
def mode(array)
	hash = Hash.new{|key, value| key[value] = 0}
	hash[1]
	array.each do |number|
		hash[number] += 1
		end
		array = []
	hash.each do |key, value| 
		if value == hash.values.max
		array.push(key)
	end
	end
	p array
end

#mode(['apple', 'orange', 'banana', 'apple'])

# 3. Refactored Solution



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
My pair and I decided to implement a hash data structure because a hash is more flexibility when it comes to working with the data it contains (can be used for unordered lists). This is useful in this example because it helped us assign each object in the array (the argument) to a key. If that object appeared more than once, it would increment the value (in the hash's key-value pair) by 1 (or the number of times that object appears in the array).

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
I was definitely more successful breaking this problem down into implementable pseudocode than I was during the previous pairing assignment (5.2). I think the reason this occured is because during this assignment, I was responsible for typing the pseudocode, while my pair tested some actual code using 'irb'. This strategy helped us avoid any extra steps or eliminate steps that didn't make sense/wouldn't work.

What issues/successes did you run into when translating your pseudocode to code?
It turns out that we actually wrote a good portion of our code and then at the end went back and completed the pseudocode/made it more readable. That being said, we did initially have some trouble pseucoding because it was tough to wrap our heads around the logic/thinking that would eventually go into our code. 

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
The methods we used to iterate through the content are '.each', '.values.max', and '.push'. Throughout solving this problem, my pair and I spent a good amount of time researching methods in Ruby Docs and on Google. Therefore, our intial solution is essentially our refactored solution because we ended up utilizing methods to help our code pass the rspec tests (which is thankfully does!).
=end