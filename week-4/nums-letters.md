<h1>Release 1 Summary Questions<h1>

<h3>What does puts do?</h3>
puts (short for "put string") simply writes onto the screen whatever comes after it. For example, if you type type "puts 1+2" into the command line (that is, after you've executed the "irb" command), puts returns nil and prints "3" to the console with a new line.

<h3>What is an integer? What is a float?</h3>
An integer is a number without decimal points and a float is a number with decimal points.

<h3>What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?</h3>
Ruby division varies depending on whether you are using integers or floats. If you are dividing one float by another float, you will get a float as the answer. This float will be the exact quotient you are looking for. However, when dividing one integer by another integer, you'll get an integer as the answer. In other words, when your computer can't get the correct answer (what if the answer is a decimal/float?), it will always round down (ex: puts 9/2 = 4 NOT 4.5)

<pre><code>
Hours in a year:
    puts 24*365
	=>8760
Minutes in a decade:
    puts (60*24*365*8)+(60*24*366*2)
	=>5258880 
</code></pre>

<h1>Exercises:</h1>
Defining Variables: https://github.com/JonSchwartz93/phase-0/blob/master/week-4/defining-variables.rb <br>
Simple String Methods: https://github.com/JonSchwartz93/phase-0/blob/master/week-4/simple-string.rb<br>
Local Variables and Basic Arithmetical Operations: https://github.com/JonSchwartz93/phase-0/blob/master/week-4/basic-math.rb

<h1>Reflection<h1>

<h3>How does Ruby handle addition, subtraction, multiplication, and division of numbers?</h3>
When using Ruby to solve basic arithemtic problems, it is important to type numbers using the digit keys, use the period for decimal points, refrain from using commas in your numbers because this confuses Ruby, and be sure to use parentheses when calculating more complex mathematical expressions. For addition and subtraction, use "+" or "-" and for multiplication and division use "*" or "/". When typing out an equation (say, puts 1 + 2) it is okay to use spaces - they don't confuse Ruby and make reading the code easier. However, Ruby division varies depending on whether you are using integers or floats (see above/below for more info).

<h3>What is the difference between integers and floats?</h3>
An integer is a number without decimal points and a float is a number with decimal points.

<h3>What is the difference between integer and float division?</h3>
Ruby division varies depending on whether you are using integers or floats. If you are dividing one float by another float, you will get a float as the answer. This float will be the exact quotient you are looking for. However, when dividing one integer by another integer, you'll get an integer as the answer. In other words, when your computer can't get the correct answer (what if the answer is a decimal/float?), it will always round down (ex: puts 9/2 = 4 NOT 4.5)

<h3>What are strings? Why and when would you use them?</h3>
Strings are groups of letters, punctuation, digits, symbols, and spaces in a program. ' ' is referred to as an empty string. It is important to note that, unlike using numerical arithmetic in Ruby, where spaces don't matter, when using strings, spaces do matter. This is particularly relevant when adding or multiplying strings. An example of multiplying strings iss puts 'hello ' * 3 which yields 'hello hello hello'. (NOTE: computers confuse single quotes and apostrophes, so to avoid an error, be sure to escape the apostrophe by using \' inside of a string).

<h3>What are local variables? Why and when would you use them?</h3>
Local variables allow you to store a string, numerical expression, or anything else (except other variables) in your computer's memory for use later in the program. In Ruby, the first character of a variable name MUST be a lowercase letter. Assignment variables is extremely useful when a particular part of your program is complex. Calling that variable allows you to "point" to and reuse the complex part of your program instead of having to retype the entire thing.

<h3>How was this challenge? Did you get a good review of some of the basics?</h3>
This challenge wasn't overly difficult. However, it was a much-needed review of basic Ruby. I absolutely needed this refresher because I couldn't recall some key details from what I had learned during my DBC interview preparation.