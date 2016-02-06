# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.

# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# In the above code, there is an assert method and that assert method is called on two blocks (the code within the curly brackets). When the code in the block is equiivalent to the variable 'name' the code "yields" and prints the name to the console. Otherwise, if the code in the block does not equal what is assigned to the variable 'name,' it raises an error.

# 3. Copy your selected challenge here
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

# 4. Convert your driver test code from that challenge into Assert Statements:

# Feature List:
# - Create a new list
# - Add an item with a quantity to the list
# - Remove an item from the list
# - Update quantities for items in your list
# - Print the list

items = "apple orange milk eggs"
list = create_list(items)

def display (message)
	puts "*" * 50
	puts message
end

def display_error (actual, expected)
	"[ERROR] expected #{expected} but got #{actual}"
end

def assert (actual, expected, message)
	display message
	puts actual == expected || display_error(actual, expected)
end

def assert_create (actual, expected, message)
	assert actual, expected, message
	puts "*" * 50
end

def assert_add (actual, expected, message)
	assert actual, expected, message
	puts "*" * 50
end

def assert_remove(actual, expected, message)
	assert actual, expected, message
	puts "*" * 50
end

def assert_update(actual, expected, message)
	assert actual, expected, message
	puts "*" * 50 
end

def assert_print(actual, expected, message)
	assert actual, expected, message
	puts "*" * 50
end

assert_create(list, create_list(items), "user can create a list of grocery items")
assert_add(list, add_item(list, 'butter', 4), "user can add an item to their grocery list")
assert_remove(list, remove_item(list, 'apple'), "user can remove an item from their grocery list")
assert_update(list, update_quantity(list, 'orange', 5), "user can update the quantity of an item on their list")
assert_update(list, print_list(list), "user can print the list to the console")

# 5. Reflection:
# What concepts did you review in this challenge?
# This challenge was a good review of how to write methods and pass information between methods.

# What is still confusing to you about Ruby?
# Because of the nature of the challenge I used to create my assert statements (I used our first Ruby GPS - Make a Grocery List), makign the assert statements was a bit difficult. In the example video, the instructor was using a class, with attribute and instance methods which seemed a bit more straightforward.

# What are you going to study to get more prepared for Phase 1?
# I'm definitely going to do keep looking into how to create assert methods because I'm not entirely sure I've created them correctly in this assignment.