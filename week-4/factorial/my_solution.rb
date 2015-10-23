# Factorial

# I worked on this challenge [by myself, with: ].


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
  puts "number = #{number}, next_number = #{next_number}, and product = #{product}"
  number = number - 1
  break if number == 1
  end
  return product
  end
end