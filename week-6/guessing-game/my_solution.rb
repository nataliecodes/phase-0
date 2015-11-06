# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer (guess)
# Output: true if the guess is correct, false if it's wrong,
#         low if the answer is below the answer, and high if
#         it's above.
# Steps:
# 1. Make a new type of game (GuessingGame)
# 2. Allow the game to begin by giving the correct guess (answer)
# 3. Designate what it means to have an answer
# 4. Designate what it means to guess a number
#    a. Allow a number to be given as a guess
# 5. Check to see if the number is greater than, less than,
#    or equal to the correct guess.
# 6.

# Initial Solution

class GuessingGame

  attr_reader :high, :low, :correct

  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @number = number
    if number > @answer
      return :high
    elsif number < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @answer == @number
      return true
    else
      return false
    end
  end

end

# Refactored Solution






# Reflection