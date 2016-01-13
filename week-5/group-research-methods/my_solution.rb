# Research Methods

# I spent [3] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

# Pseudocode
# Input: an array and a letter
# Output: new array of the words that contain that letter
# Steps:
# 1) DEFINE method
# 2) ITERATE over array to see which items contain specified letter
# 3) IF item in array contains "letter" RETURN item
# 4) END
# 5) P array

def my_array_finding_method(source, thing_to_find)
  letter = i
  i_want_pets.select {|item| item.include?(/letter/) }
new messages

  #return source.grep(/#{thing_to_find}/)
end

p my_array_finding_method(i_want_pets, 't')

# Pseudocode
# Input: a hash and a number
# Output: new array of pet names by age
# Steps:
# 1) DEFINE method
# 2) ITERATE over hash, locating all pet names that contain the specified age
# 3) IF the specified age is found, RETURN an array containing all pet names of that age.

def my_hash_finding_method(source, thing_to_find)
 source.select! do|key, value| 
    value == thing_to_find
  end
  return source.keys
end

p my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.
# '.grep' = an Enumerable method that iterates over a specified array (in this case, source). It then searches through that array for all expressions that contain what the user is looking for (in this case a letter within a string), and returns a new array of those expressions that contain what the user is looking for.
# '.select!' (aka '.keep_if') = an Array/Hash method that iterates over an array or hash (in this case a hash). If the block of code within the method returns true, an array containing those items is returned. In other words, it deletes all items within the array that don't meet the conditions set within '.select!'.
# '.keys' = a Hash method that returns a new array populated with the keys from the hash (In the case of this challenge, it returns an array of only those keys that contain a value equal to the age specified when "my_hash_finding_method" is called).


def my_hash_finding_method(source, thing_to_find)
 source.select! do|key, value|
    value == thing_to_find
  end
  return source.keys
end

p my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.
# '.grep' = an Enumerable method that iterates over a specified array (in this case, source). It then searches through that array for all expressions that contain what the user is looking for (in this case a letter within a string), and returns a new array of those expressions that contain what the user is looking for.
# '.select!' (aka '.keep_if') = an Array/Hash method that iterates over an array or hash (in this case a hash). If the block of code within the method returns true, an array containing those items is returned. In other words, it deletes all items within the array that don't meet the conditions set within '.select!'.
# '.keys' = a Hash method that returns a new array populated with the keys from the hash (In the case of this challenge, it returns an array of only those keys that contain a value equal to the age specified when "my_hash_finding_method" is called).



# Person 2's solution

def my_array_modification_method!(source, thing_to_modify)
    source.each_index do |x|
      if (source[x].is_a?(Integer))
        source[x]+=thing_to_modify
      end
    end
    source
end

def my_hash_modification_method!(source, thing_to_modify)
    source.each {|key,value| source[key]+=thing_to_modify}
    source
end

# Identify and describe the Ruby method(s) you implemented.
#    For the array, I iterated through the elements using the .each_index method. For each index, I checked
#    if the element was an integer. If so, I incremented the element's value using the += method. Had I used
#    the .each method, and then incremented the value of x, the changes would be non-destructive due to x being
#    a local variable. Making a change to source[x] instead modifies the original array, causing destructive
#    behavior required by the instructions.
#
#    For the hash, I used the each method to iterate the hash by key-value pairs, and then used the =+ method
#    to increment again. Changing the value of source{key} is a destructive action.


# # Person 3
# METHOD SORT BY ALPHABETICAL
# input: array(source)
# do:
# create empty ARRAY
# loop through EACH to find the first alphanumeric
# PUSH it to new array
# SLICE it out of old array
# repeat WHILE source < 0
# return: array sorted alphabetically without updating array

# def my_array_sorting_method(source)
#   alphabetized = []
#   while source.length > 0 {
#     source.each do |data|
#       first = source[0]
#       if data < source
#         first = data
#         alphabetized << first
#       end
#     end
#   end
# end

# Hit a roadblock and method felt inefficient. Second attempt
# Thought about using an each method within an each method.
# Looked it up on google found a post which highlighted a pitfall with my method
# DBC solution does not account for the "I" being capital.

def my_array_sorting_method(source)
  source.each_index do |first|
    (first + 1...source.length).each do |second|
      if source[first].to_s.downcase > source[second].to_s.downcase
        source[first], source[second] = source[second], source[first]
      end
    end
  end
end

# # When I feel like I don't understand a method, I run through it as if I were the computer and subsitute variables.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_array_sorting_method(i_want_pets)
#   i_want_pets.each_index do |0|   ("I")
#     (0 + 1...8).each do |"want"|
#       if "I" > "want"
#       "I", "want" = "want", "I"
#       puts "I", "want", 3, "pets", "but", "only", "have", 2

#   i_want_pets.each_index do |1| ("want")
#     (1 + 1...8).each do |3|
#       if "want" > "3"
#      "want", "3" = "3", "want"
#       puts "I", "3", "want", "pets", "but", "only", "have", 2

#   i_want_pets.each_index do |2| ("want")
#     (2 + 1...8).each do |"pets"|
#       if "want" > "pets"
#      "want", "3" = "want", "pets"
#       puts "I", "3", "pets", "want", "but", "only", "have", 2

#   i_want_pets.each_index do |3| ("want")
#     (3 + 1...8).each do |"but"|
#       if "want" > "but"
#      "want", "but" = "but", "want"
#       puts "I", "3", "pets", "but", "want", "only", "have", 2

#   i_want_pets.each_index do |4| ("want")
#     (4 + 1...8).each do |"only"|
#       if "want" > "only"
#      "want", "only" = "only", "want"
#       puts "I", "3", "pets", "but", "only", "want", "have", 2

# Had an ah-ha moment. I am forgetting the other loop. first doesn't change within loop containing second.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

# my_array_sorting_method(i_want_pets)
#   i_want_pets.each_index do |0|
#     (0 + 1...8).each do |"want"|
#       if "I" > "want"
#       "I", "want" = "want", "I"
#       puts "I", "want", 3, "pets", "but", "only", "have", 2

# my_array_sorting_method(i_want_pets)
#   i_want_pets.each_index do |0|
#     (0 + 2...8).each do |3|
#       if "I" > "3"
#       "I", "3" = "3", "I"
#       puts "3", "want", "I", "pets", "but", "only", "have", 2

# I see how this works now. Literally fist pumped.

# Worked with guide for more elegant solution

# def my_array_sorting_method(source)
#   source.map(&:to_s).map do |element|
#     element.to_i.to_s == element ? element.to_i : element
#   end
# end


# PSUEDO FOR HASH SORT
#input: Hash
#method: use .sort_by to sort
#output: Hash sorted by age

def my_hash_sorting_method(source)
  source.sort_by { |pet, age| age }
end

# Identify and describe the Ruby method(s) you implemented.

# As you can see from my notes, the array solution is complicated. I wanted to understand how the .sort method works,
# without using it.
# Let me run you through it, each_index simply pulls the index of each element (0, 1, 2, 3 ect).
# Then, we set up a second loop to select the next one (first + 1) and assign it to second. (first + 1...8) establishes our
# flow. The comparison itself is by comparing each element in the array to each other, and swapping their positions if
# the "first" is greater than the "second".

# example

# array = [2, 4, 3, 1]
# 2 > 4 false
# 2 > 3 false
# 2 > 1 true
# array = [1, 4, 3, 2]
# 4 > 3 true
# array = [1, 3, 4, 2]
# 3 > 2 true
# array = [1, 2, 4, 3]
# 4 > 3 true
# array = [1, 2, 3 ,4]


# In my_hash_sorting_method, I used .sort_by. You give the key and value conditional variables, and then choose which one to sort by



# Person 4

# Pseudocode
# Input: array and character
# Output: array with all elements containing the character removed
# Steps:
# Convert all items in the array to strings.
# Determine if each string contains the character.
# If the hated character is in any of the strings, delete that string.
# Return the array

def my_array_deletion_method!(source, thing_to_delete)

  var_to_delete = thing_to_delete

  source.map! {|str| str.to_s}
  p source.delete_if {|str| str.include?(var_to_delete)}

end

#my_array_deletion_method!(i_want_pets, "a")

# Pseudocode
# Input: hash and key
# Output: hash with key and corresponding value removed
# Steps:
# Find the key.
# Delete the key/value from the hash.
# Return the hash.


def my_hash_deletion_method!(source, thing_to_delete)
source.reject! {|k,v| k == thing_to_delete}
p source
end

# my_hash_deletion_method!(my_family_pets_ages, "George")


# Identify and describe the Ruby method(s) you implemented.
#  I used map!, to_s, include?, delete_if, and reject!
# map takes every element in an array, does to it whatever is specificed in the block it is given and then puts the modified elements into a new array. map! does the same thing, but is destructive, so it puts the modified elements back into the original array.
# to_s converts to a string. So, when combined with map! we get all elements in the original array transformed to strings.
# include? checks if a specified character or sub-string is included within a string.
# delete_if does exactly what it says. It deletes an element if a certain condition is met. So, in this example, when combined with include? delete_if iterates through each string in the array and deletes it if it includes the specified character.
# reject! is similar to delete_if, but is used with hashes. If the conditions in the code block are met, reject! rejects or deletes the corresponding key/value pair.
#
#



# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Release 1: Identify and describe the Ruby method you implemented. Teach your accountability group how to use the methods.
# (See above where I identified and described the Ruby methods that I implemented).


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I spent most of my time during this assignment researching. Therefore, I learned that it is important to try out different methods from the Ruby Docs to see which ones achieve the necessary task. Another  thing that I did learned about researching and explaining my research to others is that writing out exactly what a method does and walking other people through how it works in a written format greatly benefits my understanding of how the methods operate within Ruby. In the future, when I find useful methods, I will be sure to make a note of them and write out a description of how they work for future reference.