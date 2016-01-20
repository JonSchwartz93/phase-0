# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.

# Release 0: Pseudocode

# DEFINE class BingoBoard

#   DEFINE initialize method which takes a default board as its argument  
#     CREATE intance variables @board and @letters to be used later in the program
#   END

#   DEFINE method "generate"
#     CREATE an array containing the letters [b, i, n, g, o]
#     RETURN a random letter from the array and a random number between 1-100. 
#     ASSIGN this output to an instance variable for use later, "@call_piece"
#   END

#   DEFINE method "display"
#     ITERATE over the @board and p each element of the board (aka each row) to the console
#   END

#   DEFINE method "check"
#     The instance variable "@letters" is an array (["B", "I", "N", "G", "O"]). The first element [0] of "@call_piece" returns one of the elements from @letters. Therefore, this expression should allows the program to locate a specific column on the board.
#     ITERATE over each row of @board to see if the second element of "@call_piece" (a number) appears in the row.
#      IF that number is in the row, replace with "X"
#     END
#   END
# END

# Initial Solution:

class BingoBoard

  def initialize(board)
    @board = board
    @letters = ["B", "I", "N", "G", "O"]
  end

  def generate
    @call_piece = [@letters.sample, rand(1..100)]
  end
  
  def display
    @board.each do |row|
      p row    
    end    
  end
  
  def check
    #1. Need to convert array @letters => number (such as an index based on each letter's position in the array).
   #2. Go through array by the correct column index (per #1)
   #3. If it matches the number replace with "X", else leave it
    column_index = @letters.index(@call_piece[0])    
    @board.each do |row|
      # Example:
      # ['I', 31]
      # [47, 44, 71, 8, 88][1] #=> 44 == 31, NO so loop again
      # [22, 69, 75, 65, 73][1] #=> 69 == 31, NO so loop again
      # [83, 85, 97, 89, 57][1] #=> 85 == 31, NO so loop again
      # [25, 31, 96, 68, 51][1] #=> 31 == 31, YES, so replace w/ "X"
      if row[column_index] == @call_piece[1]
         row[column_index] = 'X'
      end
    end #loop end
  end
end

# Refactored Solution:


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE:

#         B    I   N  G   O
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
  p new_game.generate
  new_game.check
  new_game.display

# Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding for this challenge was fairly difficult. I needed to pseudocode each method, then write that method, then go back and pseudocode the next method. The reason I did this is because there are a lot of moving parts in this program, so I wanted to make sure that certain blocks of code worked before moving on. In terms of my pseudocoding style, I think its good, but could use some work. I usually write very general pseudocode, but then once I realize what my code is doing, I go back and add some more detail so that it discusses the nuances of the program.

# What are the benefits of using a class for this challenge?
# Defining a class in Ruby allows you group/organize behaviors (methods) into convenient bundles so that you can quickly create many objects that behave essentially the same way. Therefore, using a class in this challenge is extremelt useful because a user can create as many new instances of the BingoBoard class (aka - create many different games) as they want, and each game will operate in the same way because they all contain the same instance methods and instance variables.

# How can you access coordinates in a nested array?
# You can access coordinates in a nested array by calling the array and then calling specific indexes within that array. For example, take the array, animals = ['dog', 'cat', 'bear', 'pig', 'bird']. If you want to access, say, 'cat' in the array, you would simply write the name of the array followed by the index you wish to access or, animals[1] => 'cat'.

# What methods did you use to access and modify the array?
# '.index', '.each, and '.sample'

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# '.index()' = This is a very useful Array method. It takes an element from an array as its argument, and returns the index that corresponds to that element. In the challenge, I used an instance variable, '@letters' and assigned it to an array, (['B', 'I', 'N', 'G', 'O']). I called the '.index' method on @letters, and then used the first element from the random, @call_piece generator, as the argument (this corresponds to one of the letters in @letters, and thus returns the index number).

# How did you determine what should be an instance variable versus a local variable?
# I determined what should be an instance variable versus a local variable depending on what I would need to use throughout my program. In other words, if needed to refer to a variable in multiple methods, I would create an instance variable (@board, @letters, and @call_piece). On the other hand, if I only needed a variable within one method, I would create a local variable (column_index).

# What do you feel is most improved in your refactored solution?
# It turns out that my initial solution didn't was fairly simple, meaning I implemented several useful built-in Ruby methods. Therefore, I didn't feel the need to refactor.