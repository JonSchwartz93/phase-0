# Class Warfare, Validate a Credit Card Number

# I worked on this challenge with Tyler Doerschuk.
# I spent [3.33] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: true if credit card is valid, false otherwise
# Steps:
=begin
CREATE class CreditCard
  DEFINE initialize method with credit card argument
    RAISE argument error if credit card argument is not 16 digits
Convert original argument (cred_card_num) to_s. Use '.split' to break down string
      Push the 16 indiviudal strings to an array
      Convert the 16 individual strings to integers
      Assign instance variable to new array
END
#=======

DEFINE check_card method
  Double every other digit starting from the second to last digit, moving     backward
Call instance variable array and iterate over that array starting from the second-to-last digit
  RETURN values in array, doubled
Take doubled_num array, IF num greater than or equal to 10, run divmod(10) method on digits >= 10. 
RETURN entire sum of divmod integers and array
MODULUS 10 to validate credit card

#=======

Starting with the second to last digit, double every other digit until you reach the first digit.

Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

If the total is a multiple of ten, you have received a valid credit card number!
=end

# Initial Solution:
# Don't forget to check on initialization for a card length of exactly 16 digits

class CreditCard
  def initialize(cred_card_num)
    if cred_card_num.to_s.length != 16 
      raise ArgumentError.new("Not a valid credit card number")
    end
    split_num = cred_card_num.to_s.split(//)
    cred_card_array = split_num.map! {|num| num.to_i}
    @cred_card_array = cred_card_array
  end

  def check_card
    odd_index = @cred_card_array.values_at(1, 3, 5, 7, 9, 11, 13, 15)
    
    even_index = @cred_card_array.values_at(0, 2, 4, 6, 8, 10, 12, 14)

    doubled_even_index = @cred_card_array.values_at(0, 2, 4, 6, 8, 10, 12, 14).map {|x| (x * 2).divmod(10)}
    
    var = (doubled_even_index.flatten).concat(odd_index)
    
    sum = 0
    
    (var.inject{|sum,x| sum + x }) % 10 == 0
    end
end

cc = CreditCard.new(1234567812345678)
p cc.check_card

# Refactored Solution:
# (used alot of built-in methods in our initial solution so that is essentially our refactored solution)


# Reflection
# What was the most difficult part of this challenge for you and your pair?
# The most difficult part of this challenge was creating the 'check_card' method. Manipulating the credit card number so that we could see if it was a multiple of 10 required several steps. Breaking these steps down was a a challenge, but after stepping back and spending a while thinking about it, my pair and I eventually solved the problem so that it passes the RSpec tests.

# What new methods did you find to help you when you refactored?
# '.inject' = This is an Enumerable method that takes an object, in this case an array, and iterates over that array by adding each successive element in the array to the previous sum of elements. More simply, this method returns a sum of the items in the array.

# '.divmod(numeric)' = This is a Numeric method that takes a number and returns an array containing the quotient and modulus (remainder) obtained by dividing the given number by numeric. This was particularly applicable to this challenge because after doubling the even-indexed integers from the credit card, we could then apply '.divmod' to break those numbers greater than 10 down into component integers.

# What concepts or learnings were you able to solidify in this challenge?
# After completing this challenge, I definitely improved my understand of converting objects from one object-type to another (in this case, converting an integer, to a string, to an array, and back to an integer). I also improved my ability to access information in an array using indices. Additionally, I felt that I also improved my pseudocoding skills. My pair uses a strategy whereby he breaks the problem down into parts. He pseudocodes the first part, then dives into the code. Once that part of the code runs properly and passes the RSpec tests, and then goes back to the pseudocode and breaks down the next part. I felt that this approach makes coding problems feel much more manageable.