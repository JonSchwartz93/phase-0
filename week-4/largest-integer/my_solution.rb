# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
=begin
Pseudocode:
Input: Array of numbers
Output: Largest integer
Steps to solve the problem:
1) Define method for returning the largest integer in an array
2) Sort the list of numbers in the array
3) Return largest integer in the array OR return 'nil' if the array is empty
=end

=begin
def largest_integer(list_of_nums)
	if list_of_nums.sort!
		return list_of_nums[-1]
	else
		return nil
	end
end
=end

#Refactored Solution:
def largest_integer(list_of_nums)
  list_of_nums.max
end

puts largest_integer ([1, 4, -3, 9, 0, -5])