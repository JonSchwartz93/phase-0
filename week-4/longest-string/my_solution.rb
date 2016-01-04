# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
=begin
def longest_string(list_of_words)
	if list_of_words == []
		return nil
	else
		list_of_words.each do |word|
			if word.length
				list_of_words.sort_by {|word| word.length}
				return list_of_words[-1]			
			end
end
end
end
puts longest_string(['cat', 'zzzzzzz', 'apples,', 'a'])
=end

#Refactored Solution:
def longest_string(list_of_words)
	list_of_words.max { |a, b| a.length <=> b.length }
end