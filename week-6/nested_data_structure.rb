# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# puts array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# puts hash[:outer][:inner][:almost][:3]
# p hash[[:outer,:inner,:almost][3.to_i]]
# p hash[:outer][:inner]["almost"][3]

# ============================================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][0][:hash]
# p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
# based on language, it is non-destructive because the original array (number_array) is still intact after running the code.

# new_array = []
# number_array.each do |element|
#     if element.is_a?(Array)
#       element.each do |inner_element|
#         inner_element = inner_element+5
#         new_array.push(inner_element)
#     end
#     else
#       element = element + 5
#       new_array.push(element)
#     end
# end
# p new_array
# p number_array

# Bonus:

# Intial Solution:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# new_array = []
# startup_names.each do |word|
#   if word.is_a?(Array)
#     word.each do |innerword|
#       if innerword.is_a?(Array)
#         innerword.each do |thirdword|
#           thirdword << 'ly'
#           new_array.push(thirdword)
#         end
#       else
#         innerword << 'ly'
#         new_array.push(innerword)
#        end 
#     end
#   else
#       word << 'ly'
#       new_array.push(word)
#   end
# end
# puts new_array

# Refactored Solution:
new_array = startup_names.flatten.map do |item|
	item + 'ly'
end
p new_array

# Reflection
# What are some general rules you can apply to nested arrays?
# When dealing with nested arrays, it is important to keep track of the order in which each successive array appears (aka - multi-dimensional arrays). Understanding how to retrieve the contents of a nested array via indices is particularly crucial. Additionally, when it comes to nested hashes, be sure to call the key exactly as it appears in the hash. For example, if the key is a string (a phrase enclosed within quotation marks) be sure to enclose the string in quotes. This tripped up my pair and I on "Hole 2" above.

# What are some ways you can iterate over nested arrays?
# You can iterate over nested arrays by using the '.each' method followed by a block of code in order to access particular items in the array. Additionally, you can also use the '.flatten' method followed by '.map' if you need to apply a certain block of code to each item within each nested array. '.flatten', as the name suggests, essentially flattens a multi-dimentional array by removing all inner brackets and returning a uni-dimentional array that contains the contents of each inner array.

# Did you find any good new methods to implement or did you re-use ones you were already familiar with? What was it and why did you decide that was a good option?
# It turns out that I didn't implement any new methods. The ones that I did use ('.flatten', '.push', '.each', '.map', and '.is_a?') were all very applicable to this assignment (dealing with nested data structures).