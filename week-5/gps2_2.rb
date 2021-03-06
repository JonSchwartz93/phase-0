#GPS 2.2
#Your grocery list has the following minimum requirements. You will need to have separate methods for each of the following use cases:
#Create a new list
#Add an item with a quantity to the list
#Remove an item from the list
#Update quantities for items in your list
#Print the list (Consider how to make it look nice!)

# 1) Pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # CREATE empty hash = 1
  # Split input string into an array split by ' ' (space).
  # Use resulting array to populate keys in a hash
  # print the list to the console [can you use one of your other methods here?]
# output: hash
  
# Method Add an item with a quantity to the list
  # input: hash create_list method, user-input string (item), user-input string (quantity)
  # steps: 
  # convert quantity to integer (.to_i)
  # Set key equal to item
  # Set quantity to value
  # print new hash containing item
  # output: new hash
  
# Remove an item from the list
  # input: hash create_list method, user-input string (item), user-input string (quantity) 
  # steps:
  # convert quanity to integer
  # DELETE key/value pair when user-input string EQUALS key
  # print new hash without specified key/value pair
  # output: new hash without specified key/value pair
  
# Method to update the quantity of an item
  # input: hash create_list method, user-input string (item), user-input string (new quantity)
  # steps: convert user-input string (new quantity) to an integer
  # REPLACE value in key/value pair with user-input string (new quantity) where key EQUALS user-input string (item)
  # print new hash with updated value for specified key
  # output: new hash with updated value for specified key
  
# Method to print a list and make it look pretty
  # input: hash create_list method
  # steps: On its own line print "Grocery List" to the console
  # ITERATE over hash and for every key/value pair UPCASE the key and interpolate into string in the format "[key] - [value]" and print this string on a new line.
  # output: A properly formatted list

# 2) Initial Solutions
def create_list(items)
  list = Hash.new(1)
  list_items = items.split(' ')
  list_items.each do |shopping_item|
    list[shopping_item] = 1
  end
  print_list(list)
end

def add_item(list, item, quantity)
  list[item] = quantity.to_i 
  print_list(list)
end

def remove_item(list, item)
  list.delete(item)
  print_list(list)
end

def update_quantity(list, item, quantity)
  list.each { |existing_item, existing_quantity| existing_item == item ? list[existing_item] = quantity : list[existing_item] = existing_quantity }
print_list(list)
end

def print_list(list)
  puts "Shopping List"
  list.each do |item, quantity|
    puts "#{item.upcase} - #{quantity}"
  end
end
 
puts "Give me a list of groceries: "
items = gets.chomp
list = create_list(items)

puts "Give me an item to add: "
item = gets.chomp

puts "Give me a quantity for that item: "
quantity = gets.chomp

add_item(list, item, quantity)

puts "Give me a second item to add: "
item = gets.chomp

puts "Give me a quantity for that item: "
quantity = gets.chomp

add_item(list, item, quantity)

puts "Give me a third item to add: "
item = gets.chomp

puts "Give me a quantity for that item: "
quantity = gets.chomp

add_item(list, item, quantity)

puts "Give me a fourth item to add: "
item = gets.chomp

puts "Give me a quantity for that item: "
quantity = gets.chomp

add_item(list, item, quantity)

puts "Give me an item to remove: "
item = gets.chomp

remove_item(list, item)

puts "Give me the name of the item you wish to update: "
item = gets.chomp

puts "Give me the updated the quantity for that item: "
quantity = gets.chomp

update_quantity(list, item, quantity)

# TEST CODE - CREATE LIST
# items = "apple orange milk eggs"
  
# list = create_list(items)
#   p list == {"apple" => 1, "orange"=> 1, "milk" => 1, "eggs" => 1}

# TEST CODE - ADD ITEM TO LIST

# p list == {"apple" => 1, "orange"=> 1, "milk" => 1, "eggs" => 1, "butter" => 4}

# TEST CODE - REMOVE ITEM FROM LIST
# remove_item(list, "orange")

# p list == {"apple" => 1, "milk" => 1, "eggs" => 1, "butter" => 4}

# TEST CODE - UPDATE LIST
# update_quantity(list, "apple", 3)

# p list == {"apple" => 3, "milk" => 1, "eggs" => 1, "butter" => 4}

# 3) Reflection

# What did you learn about pseudocode from working on this challenge?
# While working through this challenge, there are several things I learned about pseudocode. One takeaway is that when creating several methods that interact with one another it is important to consider how they work together during the writing of the pseudocode. I also learned more about pseudocoding conventions. My guide for this challenge sent my pair and I a link to the "Pseudocode Standards" which explains what to do/what not to do when it comes to pseudocode.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# For this challenge, Hashes seemed liked the best data structure to use. Because hashes are comprised of unique key-value pairs, this aligned well with organizing our data in this challenge in the format of shopping_item-quantity. In other words, hashes are very useful for unordered lists. Arrays, on the other hand, are useful for ordered lists.

# What does a method return?
# Depending on what the method is being used to achieve, that method can return a myriad of things. Things to consider: Does the method use an argument (have input)? What is the block of code between 'def' and 'end' doing?

# What kind of things can you pass into methods as arguments?
# You can pass a variety of things into a method as an argument including an array, a hash, an integer and a string.

# How can you pass information between methods?
# You can pass information between methods by calling one method inside of another (as we did the 'print_list' method) and also by using the same arguments between methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# After this challenge, I definitely feel more comfortable writing methods and using hashes. I'm still a bit confused about passing information between methods (the previous question).