# Calculate a Grade

# I worked on this challenge by with Bernice.

# Your Solution Below

=begin

pseudocode

1. get a number (input)
2. relate that number to a letter grade
  2.a. a = 90-100
  2.b. b = 80-89
  2.c. c = 70-79
  2.d. d = 60-69
  2.e. f = <60
3. output the letter grade (output)

=end

def get_grade(avg)
  if avg.to_i >= 90
    return "A"
  elsif avg.to_i >= 80
    return "B"
  elsif avg.to_i >= 70
    return "C"
  elsif avg.to_i >= 60
    return "D"
  elsif avg.to_i < 60
    return "F"
  else
    return "Error. Please enter a number grade from 0-100."
  end
end

# refactored code

def get_grade(avg)
  return "A" if avg.to_i >= 90
  return "B" if avg.to_i >= 80
  return "C" if avg.to_i >= 70
  return "D" if avg.to_i >= 60
  return "F" if avg.to_i < 60
  return "Error. Please enter a number grade from 0-100." if avg.to_i > 100
end

# re-refactored code

def get_grade(avg)
  case avg.to_i
    when 90..100
      return "A"
    when 80..89
      return "B"
    when 70..79
      return "C"
    when 60..69
      return "D"
    when 0..60
      return "F"
    else
      return "Error. Please enter a number grade from 0-100."
  end
end