# Good Guess

# I worked on this challenge by myself.

# Your Solution Below

=begin

pseudocode

1. input: an integer
2. check if it's 42
3. output: true or false

=end

def good_guess?(int)
  return true if int == 42
  return false
end

# refactoring

def good_guess?(int)
  if int == 42
    return true
  else
    return false
  end
end