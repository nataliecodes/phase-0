# Numbers to Commas Solo Challenge

# I spent 5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#     Positive integer
# What is the output? (i.e. What should the code return?)
#     Integer with commas
# What are the steps needed to solve the problem?

# 1. Define method with integer as a parameter
# 2. Separate each digit of the integer
# 3. Every 3 digits, add a comma***
# 4. Put them all back together - digit with commas in between
# 5. Return that comma-separated number

# 1. Initial Solution -- didn't work

  # int_hash = {}

  # second_num.each_with_index { |k,v| int_hash[v] = k }

  # if int_hash.has_key?(x)
  #   int_hash[x] = int_hash[x].to_s + ','
  # end

  # int_hash.each do |i,digit|
  #   if i % 3 == 0
  #     int_hash[digit] + ','
  #   else
  #     digit = digit
  #   end
  # end

# end

# p separate_comma(10000)

# 2. Refactored Solution

def separate_comma(number)
  second_num = number.to_s.split('')
  int_array = []

  while second_num.length > 0
    int_array.unshift(second_num.pop(3))

    if second_num.length > 0
      int_array.unshift(",")
    end

  end

  int_array.join

end

# 3. Reflection

# What was your process for breaking the problem down?
# What different approaches did you consider?

# I think I tried every approach. I finally settled on an
# approach that kept the sections of three digits separate
# and inserted a comma in between.

# At first I tried using a counter to "insert" the commas,
# but everythign I tried with that left me stuck with the
# commas either all at the end or all at the beginning.

# Was your pseudocode effective in helping you build a
# successful initial solution?

# Not really, but I think I had bad pseudocode. I thought
# in terms of Ruby instead of in terms of plain English, and
# that lead to confusion when I went to start coding.

# What Ruby method(s) did you use when refactoring your
# solution? What difficulties did you have implementing
# it/them?
# Did it/they significantly change the way your code works?
# If so, how?

# I used unshift, pop and join, and that did completely change
# my code. I went from trying to iterate over and change
# arrays and hashes (with split and has_key?), to instead
# treating each 3-digit block as a separate array section
# and putting commas in between, then rejoining the arrays
# back together.

# How did you initially iterate through the data structure?

# Poorly - with has_key and each, but even when I got each
# to change, I couldn't use insert effectively to put the
# commas in the right spot.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# Definitely, but my firsts solution just didn't work.