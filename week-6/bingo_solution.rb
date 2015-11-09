# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 6 hours on this challenge.

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
  #    Match the letter to the array index
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

# class BingoBoard

# attr_accessor :bingo_board, :call, :column_b, :column_i, :column_n, :column_g, :column_o, :pretty_board
# attr_reader :random_number, :random_letter

#   def initialize(board)
#     @bingo_board = board
#       @column_b = [@bingo_board[0][0], @bingo_board[1][0], @bingo_board[2][0], @bingo_board[3][0], @bingo_board[4][0]]
#       @column_i = [@bingo_board[0][1], @bingo_board[1][1], @bingo_board[2][1], @bingo_board[3][1], @bingo_board[4][1]]
#       @column_n = [@bingo_board[0][2], @bingo_board[1][2], @bingo_board[2][2], @bingo_board[3][2], @bingo_board[4][2]]
#       @column_g = [@bingo_board[0][3], @bingo_board[1][3], @bingo_board[2][3], @bingo_board[3][3], @bingo_board[4][3]]
#       @column_o = [@bingo_board[0][4], @bingo_board[1][4], @bingo_board[2][4], @bingo_board[3][4], @bingo_board[4][4]]
#   end

#   def call

#     letters = ["b", "i", "n", "g", "o"]
#     @random_letter = letters.sample

#     @random_number = Random.new
#     @random_number = @random_number.rand(1..100)

#     @call = ''
#     @call = @random_letter + ', ' + @random_number.to_s
#   end

#   def check

#     if @random_letter == "b" && @column_b.include?(@random_number)
#       replace
#       prettify_board
#     elsif @random_letter == "i" && @column_i.include?(@random_number)
#       replace
#       prettify_board
#     elsif @random_letter == "n" && @column_n.include?(@random_number)
#       replace
#       prettify_board
#     elsif @random_letter == "g" && @column_g.include?(@random_number)
#       replace
#       prettify_board
#     elsif @random_letter == "o" && @column_o.include?(@random_number)
#       replace
#       prettify_board
#     else
#       prettify_board
#     end

#   end

#   def replace
#     @bingo_board.each.with_index do |row,i1|
#       row.each.with_index do |row_element,i2|
#         if row_element == @random_number
#           @bingo_board[i1][i2] = 'X'
#           end
#       end
#     end
#     prettify_board
#   end

#   def prettify_board
#     @pretty_board = @column_b.join(" ") + "\n" + @column_i.join(" ") + "\n" + @column_n.join(" ") + "\n" + @column_g.join(" ")  + "\n" + @column_o.join(" ")
#     puts @pretty_board.chomp
#   end

# end

# Refactored Solution

class BingoBoard

attr_accessor :bingo_board, :call, :column_b, :column_i, :column_n, :column_g, :column_o, :pretty_board
attr_reader :random_number, :random_letter

  def initialize(board)
    @bingo_board = board
    @column_b = @bingo_board.transpose[0]
    @column_i = @bingo_board.transpose[1]
    @column_n = @bingo_board.transpose[2]
    @column_g = @bingo_board.transpose[3]
    @column_o = @bingo_board.transpose[4]
  end

  def call

    letters = ["b", "i", "n", "g", "o"]
    @random_letter = letters.sample

    @random_number = Random.new
    @random_number = @random_number.rand(1..100)

    @call = @random_letter + ', ' + @random_number.to_s

  end

  def replace
    @bingo_board.each.with_index do |row,i1|
      row.each.with_index do |row_element,i2|
        if row_element == @random_number
          @bingo_board[i1][i2] = 'X '
          end
      end
    end
    @bingo_board
  end

  def check

    if @random_letter == "b" && @column_b.include?(@random_number) ||
       @random_letter == "i" && @column_i.include?(@random_number) ||
       @random_letter == "n" && @column_n.include?(@random_number) ||
       @random_letter == "g" && @column_g.include?(@random_number) ||
       @random_letter == "o" && @column_o.include?(@random_number)
       replace
    end

  end

  def prettify_board
    puts "B    I    N    G    O"
    puts "----------------------"
    puts @pretty_board = @bingo_board.map{|array| array.join(' | ') }
  end

end

# DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.bingo_board

new_game.call

new_game.check
p new_game.prettify_board

#Reflection

# How difficult was pseudocoding this challenge? What do
# you think of your pseudocoding style?

# This was the most difficult challenge to pseudocode.
# I think I'm not amazing at pseudocode. Even though I've
# read others' pseudocode while doing peer reviews, I still
# feel like I struggle with it. My style needs to get more
# detailed. I think it would be beneficial for me to speak
# to Emmanuel about this, so I've just emailed him asking
# for resources.

# What are the benefits of using a class for this challenge?

# It's great to use a class here because we can create our
# own methods. Without a class, it would look messy to try
# to check our answers or anything like that -- Ruby doesn't
# have a built-in 'check' method, obviously, so we use a
# class to accomplish this.

# How can you access coordinates in a nested array?

# To access coordinates in a nested array, you can simply
# use both indices in a row. In the board array, in order
# to access i, 70, you could write board[4][1].

# What methods did you use to access and modify the array?

# I used transpose in my refactoring, which made accessing
# and designating the columns much easier and better-
# looking. I also used each.with_index to access and change
# the nested arrays by iterating through the outer array
# and then the inner array.

# Give an example of a new method you learned while reviewing
# the Ruby docs. Based on what you see in the docs, what purpose
# does it serve, and how is it called?

# Transpose. Transpose works on equally-sized nested arrays.
# It changes the "rows" of the array into "columns" and vice
# versa. So, if you have array = [[1,2,3], [4,5,6]], calling
# transpose on the method (array.transpose) returns [[1,4],
# [2,5], [3,6]]. It basically puts all of the [0] elements
# into their own array, then all of the [1] get their own
# array, etc. It's not destructive.

# How did you determine what should be an instance variable
# versus a local variable?

# Anything that needed to be accessed outside of the class
# or among the different class methods is an instance variable.
# Local variables were only used for placeholders within methods
# which are not used elsewhere in the code. Basically, if you
# want to reuse a variable anywhere outside of the method, it
# cannot be a local variable.

# What do you feel is most improved in your refactored solution?

# I think my designation of the columns improved most; then I
# think my if/else statement with check was vastly improved as
# well. I deleted a lot of copied/pasted text by rewriting
# these.