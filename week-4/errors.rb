# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# Line #172
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected keyword_end, expecting end-of-input
# 5. Where is the error in the code?
# Line #17
# 6. Why did the interpreter give you this error?
# The interpreter gave this error because the method 'cartman_hates' was missing an 'end.'

# --- error -------------------------------------------------------

def south_park()
	puts "great show"
end

# 1. What is the line number where the error occurs?
# Line #36
# 2. What is the type of error message?
# Name Error  
# 3. What additional information does the interpreter provide about this type of error?
# After the error, the interpreter tells you that the issue in this instance is "undefined local variable or method 'south_park.'"
# 4. Where is the error in the code?
# All of Line #36
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because there is a local variable or method ('south_park') which isn't assigned to anything

# --- error -------------------------------------------------------

def cartman()
	puts "funny guy"
end


# 1. What is the line number where the error occurs?
# Line #53
# 2. What is the type of error message?
# No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# Similar to the previous error, the interpreter specifies that the issue is "undefined method 'cartman' for main Object"
# 4. Where is the error in the code?
# All of Line #53
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because there is a method ('cartman()') lacking the header 'def,' 'end,' or anything in between ('puts').

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# Line #71
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# 'wrong number of arguments (1 for 0)'
# 4. Where is the error in the code?
# Line #75
# 5. Why did the interpreter give you this error?
# The method 'cartmans_phrase' shouldn't receive any arguments. However, when cartmans_phrase is called, an argument 'I hate Kyle' is used. Put another way 'cartmans_phrase' should stand alone without anything in paretheses.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ('Kyle, you\'re an idiot!')

# 1. What is the line number where the error occurs?
# Line #90
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# 'wrong number of arguments (0 for 1)'
# 4. Where is the error in the code?
# Line 94
# 5. Why did the interpreter give you this error?
# Similar to the previous  error, the interpreter gave this error because there is a method, 'cartman_says' that should receive an argument when called. However, when it was called on Line 94, it stands alone when in reality it should have something in parentheses.

# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# Line #109
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# 'wrong number of arguments (1 for 2)'
# 4. Where is the error in the code?
# Line #113
# 5. Why did the interpreter give you this error?
# Similar to the previous two errors, the interpreter gave this error because there is a method, 'cartmans_lie' that should receive two arguments when called. However, when it is called on Line 113, it only receives one arguments when in reality it should have received two.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line #128
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# 'String can't be coerced into Fixnum
# 4. Where is the error in the code?
# Line #128
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because you can't multiply a number by a string (you can alternatively multiply a string by a number to have that string appear a certain number of times). In this case, you can't have 'Respect my authoritay!' 5's, and need to swap the two parts of the expression (Respect my authoritay * 5).

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
# Line #143
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# 'divided by 0'
# 4. Where is the error in the code?
# Line #143
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because it is mathematically impossible to divide a number by 0 (unless the number being divided is 0).

# --- error -------------------------------------------------------

require_relative "errors.rb"

# 1. What is the line number where the error occurs?
# Line #159
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
# Line #159
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because this file doesn't exist and thus cannot be opened.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The first error was, in my opinion, the most difficult to read. I was confused 
as to why it was telling me to go all the way to the bottom of the code (the 
line # is what threw me off, as expected).

How did you figure out what the issue with the error was?
I figured out the issue with the error by looking closely at the method itself 
and thinking "what is the syntax for writing a method," which led me to 
recognized that it was missing an 'end'.

Were you able to determine why each error message happened based on the code?
Yes, I was able to determine why each error message happened based on the code.

When you encounter errors in your future code, what process will you follow to help you debug?
In the future, I will take a systematic approach to debugging, just as I did in 
this assignment. I will look at the file, line #, error type, and any other 
information the interpreter provides, and then go back to the code to see if 
my code is missing anything or has something that it doesn't need.
=end