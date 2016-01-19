#Attr Methods

# I worked on this challenge by myself.

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	def name
		name = "Jon"
	end
end

class Greetings
	def initialize
		@namedata = NameData.new
	end

	def hello  
		puts "Hello, #{@namedata.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello

# Reflections:
# Release 1: Read and Research
# What are these methods doing? / How are they modifying or returning the value of instance variables?
# The first three methods called in this code (".what_is_age", "what_is_name", and "what_is_occupation") are reader methods that return the age, name, and occupation as they are originally assigned to their respective instance variables (@age, @name, and @occupation). Then, the next three methods called (".change_my_age", ".change_my_name", and ".change_my_occupation") are writer methods (they have an "=" sign in their method name) and modify the value of the original instance variables. The ".print_info" method simply prints information to the console.

# Release 2: Identify the Changes
# What changed between the last release and this release? / What was replaced? / Is this code simpler than the last?
# The "what_is_age" method is consolidated into an attribute reader method(attr_reader :age). In other words, it returns the same thing, but the code is simpler. Ruby provides a built-in shortcut that automatically creates a method that reads and returns the value of the instance variable with the same name as the method (give or take an “@”). When the method is called, it is simply the instance of the class followed by ".age".

# Release 3: More Changes
# What changed between the last release and this release? / What was replaced? / Is this code simpler than the last?
# # The "change_my_age" method is consolidated into an attribute writer method (attr_writer :age). Ruby provides a built-in shortcut that automatically creates a method that writes and returns the new value of the modified instance variable with the same name as the method (give or take an “@”). When the method is called, it is simply the instance of the class followed by ".age".

# Final Reflection:
# What is a reader method?
# A reader method is a built-in Ruby shortcut that automatically creates a method that reads and returns the value of the instance variable with the same name as the method (give or take an “@”). When the method is called, it is simply the instance of the class followed by ".[instance variable name]".

# What is a writer method?
# A writer method is a built-in Ruby shortcut that automatically creates a method that writes and returns the new value of the modified instance variable with the same name as the method (give or take an “@”). When the method is called, it is simply the instance of the class followed by ".[instance variable name]".

# What do the attr methods do for you?
# attr methods provide a shortcut to rewriting code that is repetitive (methods repeat their names in the name of the instance variable it uses).

# Should you always use an accessor to cover your bases? Why or why not?
# No, you should not always use an accesor to cover your bases. The "attr_accessor" Ruby shortcut creates both a reader and writer method for an attribute. It is equivalent to attr_reader + attr_writer. Depending on the situation, you may only need a reader method, or a writer method, but not both, so relying entirely on attr_accessor isn't always best practice.

# What is confusing to you about these methods?
# I'm still confused about sending data between classes (as I did above). I'm just not exactly sure what's going on between the two classes when I create an instance of one class in another class, and then use one of the methods from the first class to return a value in the second class. 