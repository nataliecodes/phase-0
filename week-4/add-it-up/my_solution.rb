# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Nil.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: number (total)
# Steps to solve the problem.

  # call "total" on an array of numbers (floats or integers)
  # total goes through each array element and adding these to the running total
  # return the total of the elements

# 1. total initial solution

 def total(numbers)
  sum = 0
  numbers.each { |x| sum += x }
  return sum
 end

# 3. total refactored solution

 def total(numbers)
  return numbers.reduce(:+)
 end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: a sentence!
# Steps to solve the problem.

# sentence_maker accepts strings in an array (or numbers that are changed to strings)
# the method adds the words together, with a space in between
# we capitalize the first word and add a period at the end
# return a sentence

# 5. sentence_maker initial solution

def sentence_maker(words)
  sentence = ''
  words.each do |w|
    sentence += w.to_s + ' '
  end
  return sentence.capitalize.chomp(" ") + '.'
end

# 6. sentence_maker refactored solution

def sentence_maker(words)
  return words.join(" ").capitalize + '.'
end

# SO. MUCH. EASIER!!!!