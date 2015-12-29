puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'It\'s a pleasure to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'
puts
puts 'What is your favorite number?'
favorite_num = gets.chomp.to_i
better_num = favorite_num.to_i + 1
puts 'A bigger and better favorite number is ' + better_num.to_s + '!'

=begin
Exercises:
Return a Formatted Address: https://github.com/JonSchwartz93/phase-0/blob/master/week-4/address/my_solution.rb
Defining Math Methods: https://github.com/JonSchwartz93/phase-0/blob/master/week-4/math/my_solution.rb

Reflection:
How do you define a local variable?
A local variable is defined by assigning it a sequence of letters and numbers. 
More specifically with regard to Ruby, the first character of this sequence (known 
as a variable name) must be a lowercase letter. Defining a variable allows you 
to type in that particular part of your program just once so that you can hang 
on to it and store it somewhere for use whenever you need to call it. Note that 
local variables found inside of a method are local to that method, and cannot be 
called outside of that method.

How do you define a method?
Like a local variable, a method is defined by assigning it a sequence of letters 
and numbers, and must begin with a lowercase letter. The elements 'def' and 'end' 
are used to declare a method. The 'parameters' (aka - arguments) of a method are 
simply a list of local variable names in parentheses.

What is the difference between a local variable and a method?
Local variables usually point to a specific object (a string or mathematical 
expression) that can be used time and time again when that local variable is 
called. A method, on ther other hand, points to a number of parameters, which are 
usually local variables. These local variables found inside of a method are local 
to that method and cannot be sued outside of the method. In other words, local 
variables can stand alone and methods contain 'parameters' (aka - arguments) which 
are simply a list of variable names (found in parentheses) local to that method.

How do you run a ruby program from the command line?
A Ruby program can be run from the command line by typing "ruby [ruby_file_name.rb]."

How do you run an RSpec file from the command line?
An RSpec file can be run from the command line by typing "rspec [rspec_file_name.rb]."

What was confusing about this material? What made sense?	
I was initially confused about the difference between a local variable and a 
method. It is still a bit foggy for me, so I will need to do some more research 
and reading to solidify my understanding. Using the RSpec files to test whether 
or not the code works eventually made sense for me. I found it particularly helpful to 
look over the RSpec examples (aka - tests) prior to writing my code. This usually 
pointed me in the right direction with regards to constructing the said program.
=end
