# Factorial

# I worked on this challenge with Nil.

# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  elsif (number < 0)
    return false
  elsif (number == 1)
   return 1
  else
    product = number
    next_number = 0
    while (number > 0)
      next_number = number - 1
      product = product * next_number
      number = number - 1
      break if number == 1
    end
  return product
  end
end