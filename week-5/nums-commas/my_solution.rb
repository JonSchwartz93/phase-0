# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented in the file.

# 0. Pseudocode
# Input: a positive integer
# Output (What should the code return?): a comma-separated integer as a string
# Steps:
# 1) DEFINE separate_comma method
# 2) IF integer <= 999
# 3) 	RETURN integer converted to a string
# 4) ELSIF 1000 <= integer <= 9999	
# 5) 	RETURN comma-separated integer (with comma between index 0 and 1)
# 6) ELSIF 10000 <= integer <= 99999
# 7) 	RETURN comma-separated integer (with comma between index 1 and 2)	
# 8) ELSIF 100000 <= integer <= 999999	
# 9) 	RETURN comma-separated integer (with comma between index 2 and 3)
# 10)ELSIF 1000000 <= integer <= 9999999
# 11) 	RETURN comma-separated integer (with commas between index 0 and 1 as well as between index 3 and 4)
# 12)ELSE 10000000 <= integer <= 99999999
# 13) 	RETURN comma-separated integer (with comma between index 1 and 2 as well as between index 3 and 4)
# 14) END separate_comma method

# 1. Initial Solution
# def separate_comma(integer)
# 	if integer <= 1000
# 		return integer.to_s
# 	elsif integer >= 1000 && integer <= 9999
# 		x = integer.to_s.split(//)[0..1].join(",")
# 		y = integer.to_s.split(//)[2..3].join()
# 		x+y
# 	elsif integer >= 10000 && integer <= 99999
# 		x = integer.to_s.split(//)[0]
# 		y = integer.to_s.split(//)[1..2].join(",")
# 		z = integer.to_s.split(//)[2..3].join()
# 		x+y+z
# 	elsif integer >= 100000 && integer <= 999999
# 		x = integer.to_s.split(//)[0..1].join()
# 		y = integer.to_s.split(//)[2..3].join(",")
# 		z = integer.to_s.split(//)[4..5].join()
# 		x+y+z
# 	elsif integer >= 1000000 && integer <= 9999999
# 		w = integer.to_s.split(//)[0..1].join(",")
# 		x = integer.to_s.split(//)[2]
# 		y = integer.to_s.split(//)[3..4].join(",")
# 		z = integer.to_s.split(//)[5..6].join()
# 		w+x+y+z
# 	else
# 		v = integer.to_s.split(//)[0]
# 		w = integer.to_s.split(//)[1..2].join(",")
# 		x = integer.to_s.split(//)[2]
# 		y = integer.to_s.split(//)[3..4].join(",")
# 		z = integer.to_s.split(//)[5..6].join()
# 		v+w+x+y+z
# 	end
# end

# p separate_comma(10000000)
			
# 2. Refactored Solution

def separate_comma(integer)
	if integer <= 1000
		return integer.to_s
	elsif integer >= 1000 && integer <= 9999
		integer.to_s.insert(1, ',')
	elsif integer >= 10000 && integer <= 99999
		integer.to_s.insert(2, ',')
	elsif integer >= 100000 && integer <= 999999
		integer.to_s.insert(3, ',')
	elsif integer >= 1000000 && integer <= 9999999
		integer.to_s.insert(1, ',').insert(5, ',')
	elsif integer >= 10000000 && integer <= 99999999
		integer.to_s.insert(2, ',').insert(6, ',')
	else
	end
end

p separate_comma(10000000)

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# Initially, I was very unsure about how to approach this problem. I began by trying to use conditional statements (although they are a bit tedious) to see if I could break the challenge down into small steps. After looking at the RSpec file to see if I could gain any insight into how this problem is broken down, I ended up going with this conditional approach.

# Was your pseudocode effective in helping you build a successful initial solution?
# My pseudocode was effective in helping me build a successful intial solution. One strategy that I used in writing my pseudocode that allowed me to break the problem down into smaller steps was looking at the RSpec file. Seeing what conditions needed to be met helped me tailor my pseudocode, and thus, my initial solution, to what was expected.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# The new Ruby method that I used when refactoring my solution was '.insert'. This method takes an index of a character within a string, and places another string immediately before that character, thus returning a modified string. This is a mouthful, but its actually quite simple and very applicable to this problem. (For example, you can take any size integer and easily place commas where they belong according to character indexes). Using Ruby Docs to implement the '.insert' method wasn't overly difficult, but it took some time to go through the documentation to see which ones applied to this challenge. The '.insert' method significantly changed how my code works. In my intial solution, I would take a given integer, convert it to a string, split this string into individual characters to form an array, and then rejoin the string using indexes, implementing commas in their correct location. In my refactored solution, all I needed to do was convert the given integer to a string, and place commas in their correct location based on index.

# How did you initially iterate through the data structure?
# I didn't end up needing to iterate through a data structure for this challenge.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I definitely feel that my refactored solution is more readable than my intial solution because it shortens it significantly. However, I had trouble devising a way to iterate through the data structure. That being said, this is one area where I think my refactored solution could definitely improve.
