# Your Names
# 1) Jon Schwartz
# 2) Lydia Nash

# We spent [1.5] hours on this challenge.

# Refactoring Agenda:
  # using the .has_key? method for checking if the library contains the item
  # make variable names more readable

# Additional Features:
  # Create a feature that calculates what to do with the leftover ingredients ("Suggested baking items: ")
  # Create a feature that raises an ArgumentError if there aren't enough ingredients to make the item.

# Bakery Serving Size portion calculator.

# define a method that takes two arguments
def serving_size_calc(item_to_make, num_of_ingredients)
  # create a hash containing items and # of ingredients needed  
  desserts = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # check to see if item is in library
  # error_counter = 3
  # library.each do |food|
  #   if library[food] != library[item_to_make]
  #     error_counter += -1
  #   end
  # end

  # if the item is not in the "library", then return an error message 
  # if error_counter > 0
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless desserts.has_key?(item_to_make)
  # end

  # declare variable that equals the value (# of ingredients required) for the item
  required_ingredients = desserts.values_at(item_to_make)[0]
  
  # Raise an Argument Error if there aren't enough ingredients to make the item
  raise ArgumentError.new("Not enough ingredients to make #{item_to_make}") if num_of_ingredients < required_ingredients

  # calculate the leftover ingredients
  remaining_ingredients = num_of_ingredients % required_ingredients

  # returns how much of the item they can make based on the # of ingredients & what the leftovers could make
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / required_ingredients} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / required_ingredients} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients} cookies."
  end
end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)
p serving_size_calc("pie", 10)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# There are several things I learned about making code readble during this challenge. One thing is to make sure that the variable names used are easy to understand. This will go a long way when an outsider assesses your code. Another thing I learned about improving the readability of my code is to use concise comments throughout each step of the code describing what's happening. Again, this will assist an outsider reading my code (in addition to cementing my understanding of what's going on).

# Did you learn any new methods? What did you learn about them?
# '.has_key?' = This is a hash method that takes a hash's key as its argument and returns a boolean (true or false) if that key is present within the given hash. This method is useful in this assignment because unless that key (in this case its the "item_to_make") appears in the hash, it returns the ArgumentError (false) when the serving_size_calc method is called and contains an "item_to_make" that doesn't exist in the hash. 

# '.values_at' = This is a hash method that takes the keys of hash and returns the corresponding values. This method is useful in this challenge because if the value (num_of_ingredients) given when the serving_size_calc method is called is below the number of required ingredients associated with the given key (item_to_make), it will return an ArgumentError.

# What did you learn about accessing data in hashes?
# I learned that accessing data in hashes isn't as difficult as I thought last week. It is important to keep track of the various key-value pairs and how they are formatted so that when you try accessing a piece of information within a hash, you retrieve the correct item.

# What concepts were solidified when working through this challenge?
# After completing this challenge, I definitely improved my fluency when it comes to working with hashes and accessing information within them. I also solidified my understanding of Argument Errors, and when to implement them into my code.