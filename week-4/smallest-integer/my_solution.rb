# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
=begin
Pseudocode:
Input: Array of numbers
Output: Largest integer
Steps to solve the problem:
1) Define method for returning the smallest integer in an array
2) Sort the list of numbers in the array
3) Return smallest integer in the array OR return 'nil' if the array is empty
=end

=begin
Original Solution:
def smallest_integer(list_of_nums)
  if list_of_nums.sort!
  	return list_of_nums[0]
  else
  	return nil
  end
end
=end

#Refactored Solution:
def smallest_integer(list_of_nums)
  list_of_nums.min
end

puts smallest_integer ([1, 4, -3, 9, 0, -5])