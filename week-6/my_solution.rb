# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: random list of items (array of strings)
# Output: the output of 'sides' should be the number of list items;
# the output of 'roll' will be one of the random list items
# Steps:

# 1. Create a type of function called Die
# 2. Allow Die to accept/work with any collection of characters (the list items)
# 3. Define the sides of the die
# 4. Define what happens when you roll -- which is: pick a random list item/side

# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     if labels.empty?
#       raise ArgumentError.new("Please do not enter an empty list")
#     end
#   end

#   def sides
#     @sides = @labels.length
#   end

#   def roll
#     roll = @labels.sample
#   end
# end

# Refactored Solution

class Die

  def initialize(labels)
    @labels = labels
    if labels.empty?
      raise ArgumentError.new("Please do not enter an empty list")
    end
  end

  attr_reader :labels

  def sides
    @sides = @labels.length
  end

  def roll
    roll = @labels.sample
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll

# Reflection

# What were the main differences between this die class
# and the last one you created in terms of implementation?
# Did you need to change much logic to get this to work?

# In last week's challenge, it was easier to define the
# variables because we used integers. In this challenge
# there had to be a separate variable (labels). I also
# had to be sure that I compared the sides to label.length.
# Finally, Random.new doesn't work for strings, so I
# had to research and use 'sample' this week. All that
# being said, the logic did not really change.

# What does this exercise teach you about making code that
#  is easily changeable or modifiable?

# If the input changes from integers to strings, then
# that will create more work to make the code easily
# modifiable. I'm not sure what else this challenge
# teaches, though.

# What new methods did you learn when working on this
# challenge, if any?

# I researched and learned 'sample.' I only knew 'rand'
# from last week, and got an error, so I had to find the
# string equivalent.

# What concepts about classes were you able to
# solidify in this challenge?

# I think the general layout/syntax of creating a
# method was solified. I also think I learned the
# lesson of number v. string in classes.