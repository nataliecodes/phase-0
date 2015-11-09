# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

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
#    or equal to the correct guesss

# Initial Solution

# class GuessingGame

#   attr_reader :high, :low, :correct

#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(number)
#     @number = number
#     if number > @answer
#       return :high
#     elsif number < @answer
#       return :low
#     else
#       return :correct
#     end
#   end

#   def solved?
#     if @answer == @number
#       return true
#     else
#       return false
#     end
#   end

# end

# Refactored Solution

class GuessingGame

  attr_reader :high, :low, :correct

  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @number = number
    if number > @answer
     :high
    elsif number < @answer
     :low
    else
     :correct
    end
  end

  def solved?
    @answer == @number ? true : false
  end

end

# Reflection

# How do instance variables and methods represent the
# characteristics and behaviors (actions) of a
# real-world object?

# Instance variables mimic real-world objects because
# they are dynamic. If you think about @number here,
# number will be a different number every time. By
# using an instance variable, we allow @number to act
# more like a type of number, not a static figure like
# making number equal to 3 or something.

# When should you use instance variables? What do they
# do for you?

# Use instance variables when you want to use them
# outside of just the method in which you create them.

# Explain how to use flow control. Did you have any
# trouble using it in this challenge? If so, what did you
# struggle with?

# Flow control is basically the logical progression of
# steps in your program. It wasn't that hard for this
# challenge, since the example game was simple. In this
# game, there were two flow steps: 1. determine if the
# guess is higher, lower than, or equal to the correct
# number. 2. determine if the game is solved (see if
# the last guess is correct).

# Why do you think this code requires you to return
# symbols? What are the benefits of using symbols?

# I think this requires symbols because we aren't
# trying to return a string or a number, per say;
# we just want to return the thing that means
# "high", "low", or "correct."

# Symbols are beneficial because any time you use
# it in your program, it's the same object (and object_
# id). Though it's not crucial to a small program like
# this guessing game, symobls can save time and memory.