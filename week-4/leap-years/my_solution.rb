# Leap Years

# I worked on this challenge by myself.

# Your Solution Below

# pseudocode

=begin

1. input: integer
2. check if input is a leap year
   a. is it divisible by 4 and not 100?
   b. is it divisible by 400?
   c. is it divisible by 4 and 100 but not 400?
   d. is it divisible by 4?
3. output true or false

=end

def leap_year?(year)

  if year % 4 != 0
    return false
  end

  if year % 4 == 0 && year % 100 != 0
    return true
  end

  if year % 4 == 0 && year % 100 == 0 && year % 400 != 0
    return false
  end

  if year % 400 == 0
    return true
  end

end