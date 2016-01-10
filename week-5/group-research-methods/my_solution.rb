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
  return source.grep(/#{thing_to_find}/)
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


# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your accountability group how to use the methods.
# (See above where I identified and described the Ruby methods that I implemented).


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I spent most of my time during this assignment researching. Therefore, I learned that it is important to try out different methods from the Ruby Docs to see which ones achieve the necessary task. Another  thing that I did learned about researching and explaining my research to others is that writing out exactly what a method does and walking other people through how it works in a written format greatly benefits my understanding of how the methods operate within Ruby. In the future, when I find useful methods, I will be sure to make a note of them and write out a description of how they work for future reference.