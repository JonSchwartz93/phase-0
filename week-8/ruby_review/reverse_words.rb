# Reverse Words

# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode:
# Objective: Write a method that takes a sentence as a string and reverses each word in the sentence.
# Input: A sentence
# Output: Each word in the sentence, reversed
# Steps:
# DEFINE reverse_words method (sentence)
# 	Since the input is one long string, split the string so that becomes individual strings within an array. Set this equal to a variable "new_sentence"
# 	ITERATE over the new array of strings, reversing each individual string.
# 	END
# 	JOIN each individually reversed string with a " " in between each word.
# END

# Initial Solution:
# def reverse_words(sentence)
# 	new_sentence = sentence.split.map! do |word| word.reverse!
# 	end
# 	return new_sentence.join(" ")
# end

# p reverse_words("Hello, my name is Jon Schwartz")

# Refactored Solution:
def reverse_words(sentence)
	# improved readability by making this code into two separate lines.
	new_sentence = sentence.split.map! do |word| 
		word.reverse!
	end
	# removed an unnecessary "return"
	new_sentence.join(" ")
end

p reverse_words("Hello, my name is Jon Schwartz")

# Reflection:
# What concepts did you review or learn in this challenge?
# This challenge was a good review of how to manipulate a string, and convert between different value types (from a string, to an array, back to a string).

# What is still confusing to you about Ruby?
# This challenge was fairly straight forward. However, I am still working to improve my ability to iterate over complex data structures (array within an array, hash within a hash, etc.) so I am definitely going to review those topics in our final week of Phase-0.

# What are you going to study to get more prepared for Phase 1?
# Again, I am going to review hwo to manipulate and interact with complex data structures. I also want to familiarize myself with other Ruby methods that I have yet to implement into my code.