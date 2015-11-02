# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: random integer that's rolled
# Steps:
# 1. Make a group (class) for any Die
#    a. Start it with the object it will take
#    b. Raise argument error if a number less than 1
#       is passed through for "sides"
# 2. Define what a side is
# 3. Define how to roll
#    a. A roll is a random number between 1 and the # of sides


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     unless sides > 0
#     raise ArgumentError.new("Pick a number greater than 0.")
#     end
#   end

#   def sides
#     @sides
#   end

#   def roll
#     roll = Random.new
#     roll.rand(1..@sides)
#   end

# end

# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    unless sides > 0
    raise ArgumentError.new("Pick a number greater than 0.")
    end
  end

  attr_reader :sides

  def roll
    roll = Random.new
    roll.rand(1..@sides)
  end

end

# 4. Reflection

# What is an ArgumentError and why would you use one?

# ArgumentError means that there is something wrong with
# the arguments you're attempting to pass into a method.
# You would use one if you need a specific number of arguments
# but that number is not given. The method won't run propertly
# with too many or too few arguments.

# What new Ruby methods did you implement? What challenges
# and successes did you have in implementing them?

# The only new actual method I used was rand. My issue
# was that the Ruby docs weren't super obvious to me so
# I didn't realize I had to set roll to Random.new first.
# After that, though, things went well.

# What is a Ruby class?

# A Ruby class is sort of like a general object definition.
# The array class has certain info containers that behave
# in a certain way, with a certain format, and certain
# built-in methods.

# Why would you use a Ruby class?

# You use a Ruby class to better manipulate and calculate
# stuff. Instead of just one long string of words with numbers
# next to them, you can use a hash to order the list and
# find ways to access certain pieces of information.
# Code wouldn't be as readable without classes.

# What is the difference between a local variable and an instance variable?

# A local variable only exists between the "def" and "end"
# of a method. An instance variable is accessible outside of
# methods like this. Within a class, for example, you can
# use instance variables among many methods and therefore
# have the ability to work with this varialble many times.

# Where can an instance variable be used?

# It can be used anywhere within a designated class.
