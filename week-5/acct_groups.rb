# 5.6 - Create Accountability Groups

# Write a method to automatically create accountability groups from a list of names. Each accountability group should consist of 4 or 5 names (at least 3 names).

# 56 Fiddler Crabs/4 people per acct_group = 14 groups

# Create a list of names
#
#Remove an item from the list
#Update quantities for items in your list
#Print the list (Consider how to make it look nice!)

# Pseudocode
# Input: a list of names
# Output: a group of 4 names
# Steps:
	# 1) DEFINE method
	# 2) On its own line PRINT "Here is an Accountability Group of 4 random Fiddler Crabs:"
	# 3) ITERATE over the array, populating 4 random names. List each name on the console with a "-" before the name.
	# 4) PRINT list of names to console

# Solution:
fiddler_crabs_2016 = ['John Seo', 'Aaron Hu', 'Adam Pinsky', 'Akeem Street', 'Alex Forger', 'Andrew Kim', 'Baron Kwan', 'Brian Bier','Byron Gage', 'Carl Conroy', 'Charlie Bliss', 'Christopher Bunkers', 'Cody Kendall', 'Coline Forde', 'David Valencia', 'Emily Claire Bosakowski', 'Everett Golden', 'Hagai Zwick', 'Heather Conklin', 'Ian Wudarski', 'Ieronim Oltean', 'Jake Hamilton', 'James Boyd', 'Jasmeet Chatrath', 'Jenna El-Amin', 'Jerrie Evans', 'Joe Case', 'Jonathan Case', 'Jonathan Schwartz', 'Jonathan Silvestri', 'Kathryn Garbacz', 'Ian Kinner', 'Kyle Cierzan', 'Kyle Zelman', 'Linda Oanh Ho', 'Yiorgos Makridakis', 'Matt Harris', 'Matthew Baquerizo', 'Menuka Samaranayake', 'Michael Pintar', 'Mollie Stein', 'Lydia Nash', 'Aaron Opsahl', 'Peter Leong', 'Peter Stratoudakis', 'Prince Sadie', 'Ryan F. Salerno', 'Sanderfer Chau', 'Sarah Finken', 'Emmet Susslin', 'Sydney Rossman-Reich', 'Eric Tenza', 'Thomas Yancey', 'Tim Kelly', 'Timothy Beck', 'Tyler Doerschuk']

def create_acct_group(array)
	puts 'Here is an Accountability Group of 4 random Fiddler Crabs: '
	array.sample(4).each do |name|
    	puts " - #{name}"
  end
end

create_acct_group(fiddler_crabs_2016)

# Reflection:

# What was the most interesting and most difficult part of this challenge?
# I really enjoyed this challenge because I felt as though I had alot of freedom to choose how to write a solution. That being said, all though we had free reign when it came to this assignment, this also made it difficult in terms of knowing where to begin.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I definitely feel like I am improving in my ability to write pseudocode an break down a problem. Pseudocode, in many ways, saved me in this challenge because it helped me establish a direction to go in. 

# Was your approach for automating this task a good solution? What could have made it even better?
# To be honest, I'm not sure how useful my approach was in this challenge. My code takes a list of people (I copied the roster of Fiddler Crabs 2016 and formatted it into an array which was quite tedious and time-consuming...) and returns a random group of 4 people to create an Accountability Group. However, one important thing that it doesn't do is store the output when the method is run. Therefore, if the method is run multiple times, the same name might appear in multiple Accountability Groups. 

# What data structure did you decide to store the accountability groups in and why?
# I opted to use an array as the data structure for storing the accountability groups. I initially attempted to use a hash, but had some trouble implementing that into my code.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# It turns out that my initial solution is essentially my refactored solution. I am still looking into other, built in methods that might help me improve my solution (i.e. - store previous outputs from running the method).