# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and
# a number (1-100)

  # 1. The method will select a random letter from a set of
  #    5 letters
  # 2. The method will also select a random number from 1-100
  # 3. It will output these choices

# Check the called column for the number called.

  # 1. Find the column called
  # 2. Iterate through that column to search for the number

# If the number is in the column, replace with an 'x'

  # 1. If the number is already there, replace it with an 'x'

# Display a column to the console

  # 1. Choose a column
  # 2. Display all of its contents

# Display the board to the console (prettily)

  # 1. Print it not as an array but as numbers
  # 2. This will remove commas and brackets

# Initial Solution

class BingoBoard

attr_accessor :bingo_board
attr_reader :random_number, :random_letter

  def initialize(board)
    @bingo_board = board
  end

  def call
    @call = ''
    # @random_letter + @random_number
  end

    def random_letter
      letters = ["b", "i", "n", "g", "o"]
      @random_letter = letters.sample
      return @random_letter
    end

    def random_number
      @random_number = Random.new
      @random_number = @random_number.rand(1..100)
      return @random_number
    end

  def check
    @bingo_board.flatten.include?(@random_number)
  end

  # def column
  #   @column = column
  # end

end

# Refactored Solution



# DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

p @random_number
p new_game.call

#Reflection

