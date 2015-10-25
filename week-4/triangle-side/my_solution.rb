# I worked on this challenge with: Bernice.

# Your Solution Below

# pseudocode

=begin

1. input: 3 numbers
2. calculate if the 3 numbers are a valid
  a. can't be negative
  b. can't be zero
  c. the two shorter sides can't add up to be less than the longest
3. output: true or false

=end

def valid_triangle?(a, b, c)
  if a <= 0 || b <= 0 || c <= 0
    return false
  end

  if a + b >= c && a + c >= b && b + c >= a
    return true
  else
    return false
  end
end

# refactoring

def valid_triangle?(a, b, c)
  return false if a <= 0 || b <= 0 || c <= 0

  return true if a + b >= c && a + c >= b && b + c >= a

  return false
end