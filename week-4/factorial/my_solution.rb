# Factorial

# I worked on this challenge with Menuka Samaranayake.


# Your Solution Below
def factorial(number)
	current_product = 1
	while number > 0
		current_product *= number
		number -= 1
	end
	return current_product
end