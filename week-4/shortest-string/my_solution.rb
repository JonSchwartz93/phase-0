# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
=begin

def shortest_string(list_of_words)
	if list_of_words == []
		return nil
	else
		list_of_words.each do |word|
			if word.length
				list_of_words.sort_by {|word| word.length}
				return list_of_words[0]			
			end
end
end
end
puts shortest_string(['cat', 'zzzzzzz', 'apples,', 'a'])

=end

#Refactored Solution:
def shortest_string(list_of_words)
	list_of_words.min { |a, b| a.length <=> b.length }
end