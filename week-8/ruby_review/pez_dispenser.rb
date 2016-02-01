# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# 1. Review the following user stories:
# As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that represent Pez so it's easy to start with a full Pez dispenser.
# initialize

# As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser so I can know how many are left.
# 


# As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.

# As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.

# As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order of the flavors coming up.

# Pseudocode:
# DEFINE PezDispenser class
# 	INITIALIZE PezDispenser class that takes "flavors" as argument
#  		DEFINE "flavors" instance method that contains all default Pez flavors so that user starts with a full dispenser.
# 
# 	DEFINE "pez_count" instance method that counts the number of Pez remaining.

# 

	
# Initial Solution

class PezDispenser
	def initialize(flavors)
		@flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry)
	end
	def 
		@flavors
	end
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
pez = PezDispenser.new(flavors)
p pez.fulldispenser


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

# flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
# super_mario = PezDispenser.new(flavors)
# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
# puts "Here's a look inside the dispenser:"
# puts super_mario.see_all_pez
# puts "Adding a banana pez."
# super_mario.add_pez("banana")
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"


# Reflection:
# What concepts did you review or learn in this challenge?
# Ruby array literal notation ("%w()" contains the contents of an array separated by spaces, not commas, without quotes)
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?