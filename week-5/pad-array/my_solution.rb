# Pad an Array

# I worked on this challenge with Sarah Finken.

# I spent [3] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# What is the input?
# An array, a minimum size (non-negative integer) for the array, and an optional argument of what the array should be "padded" with

# What is the output? (i.e. What should the code return?)
#An array up to the minimum size + the padded value if it is initially below the minimum size.

# What are the steps needed to solve the problem?
# Define method pad! or pad
# IF array greater than or equal to min_size
# RETURN array
# ELSE
# Create variable for current length of array
# UNTIL length of array equals the minimum size, add the necessary amount of padded values to the end of the array (# of padded values needed is minimum size - current length_size)
# PRINT array (current array + padded values)

# 1. Initial Solution
def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  else
  	x = array.length
  	until x == min_size
		array.push value
		x += 1
	end
	p array
  end
end

#pad!([1, 2, 3, 4], 6, value='nil')

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
 	array.each do |item|
    	new_array.push item
  	end
  if new_array.length >= min_size
  	return new_array
  else
  	x = new_array.length
    until x == min_size
    	new_array << value
   		x += 1
   	end
	p new_array
end
end

# 3. Refactored Solution
#pad!
def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  else
  	x = array.length
  	until x == min_size
  	#consolidated the next two lines into one line	
		array.push value; x += 1
	end
	p array
  end
end
#pad!([1, 2, 3, 4], 6, value='nil')

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
 	array.each do |item|
    	new_array.push item
  	end
  if new_array.length >= min_size
  	return new_array
  else
  	x = new_array.length
    until x == min_size
    #consolidated the next two lines into one line
    	new_array.push value; x += 1
   	end
	p new_array
end
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes, my pair and I were successful in breaking the problem down into small steps. I'm still familiarizing myself with pseudocoding, but it definitely helps me dissect the problem and slightly reduce the time it takes me to write the intial solution (I'm hoping that I will eventually be able to spend most of my time pseudocoding, and then quickly compose an initial code solution).

Once you had written your pseudocode, were you able to easily 
translate it into code? What difficulties and successes did you have?
Once my pair and I had written our pseudocode, we had a bit of difficulty translating it into code. More specifically, we knew that the two methods we were creating (pad! and pad) differed in that one was the destructive version and the other was the non-destructive version. However, we found it challenging to translate this into code form.

Was your initial solution successful at passing the tests? If so, 
why do you think that is? If not, what were the errors you encountered
and what did you do to resolve them?
Yes, our intial solution was successful at passing the tests. I believe that it passed the initial rspec examples because we took a logical approach to mapping out our thinking (pseudocode), which then translated into code organized in a logical format.

When you refactored, did you find any existing methods in Ruby to 
clean up your code?
It turns out that our intial solution contains some of the more frequently used array methods (namely '.each,' .length', and '.push'). That being said, we did not find any existing methods in Ruby to clean up our code. Instead, during the refactoring process, we simply consolidated some of our lines of code into single lines that achieve the same goal as the aforementioned multi-line portions of our intial solution.

How readable is your solution? Did you and your pair choose descriptive
variable names?
I believe that our solution is fairly easy to read. However, I do believe that we could've used more descriptive variable names to improve readability.

What is the difference between destructive and non-destructive methods
in your own words?
A destructive method (usually one that contains '!' aka 'bang', although there are a handful of exceptions) is one that permanently modifies an object on which it is called. Such a method is considered “dangerous” (a.k.a. – causes potentially unexpected behavior) because it is a warning that there may be more going on in the code than the name suggests (e.g. other parts of the program may depend on those objects not to change). A non-destructive method (one that does not contain !) is one that does not permanently modify the object on which it is called.
=end