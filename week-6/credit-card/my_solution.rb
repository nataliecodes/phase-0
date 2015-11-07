# Class Warfare, Validate a Credit Card Number

# I worked on this challenge with: Gregg Wehmeier.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: A string (credit card number)
# Output: boolean
# Steps:

# Turn string input into array of individual numbers
# Verify number is 16 digits long
# iterate backwards doubling every other digit
# break apart any two digit numbers
# add all numbers
# determine if sum is divisable by ten

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   attr_reader :card_number

#   def initialize(card_number)
#     @card_number = card_number
#     int_array = card_number.to_s.split('')
#     if int_array.length != 16
#       raise ArgumentError.new("Please enter 16 digits.")
#     end
#   end

#   def check_card
#     doubled = double_numbers(@card_number)
#     summed = sum_digits(doubled)
#     summed % 10 == 0
#   end

#   def double_numbers(number)
#     number = number.to_s.split('').map!{|x|x.to_i}
#     number.reverse!()
#     number.each_index{|x|
#       if x % 2 != 0
#         number[x] = number[x] * 2
#       end
#       }
#   end

#   def sum_digits(array)
#     array.map!{ |i| if i > 9
#       i.to_s.split('').map!{|i| i.to_i}
#       else i
#       end
#       }
#     array = array.flatten.reduce(:+)
#   end

# end

# test = CreditCard.new(4563960122001999)

# p test.check_card()

# Refactored Solution

class CreditCard
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
    if @card_number.to_s.length != 16
      raise ArgumentError.new("Please enter 16 digits.")
    end
  end

  def check_card
    doubled = double_numbers(@card_number)
    summed = sum_digits(doubled)
    summed % 10 == 0
  end

  def double_numbers(number)
    number = number.to_s.split('').map!(&:to_i).reverse!()

#     number.reverse_each.with_index{|e, i|   we attempted to simplify
#       if i.odd?                             but decided that this
#         number[i] = number[i] * 2           was actually a little harder
#       else                                  to read
#       p number
#       }

    number.each_index{|x|
      if x.odd?
        number[x] = number[x] * 2
      end
      }
  end

  def sum_digits(array)
    array.map!{ |i| if i > 9
      i.to_s.split('').map!(&:to_i)
      else i
      end
      }
    array = array.flatten.reduce(:+)
  end

end

# Reflection

# What was the most difficult part of this challenge for you
# and your pair?

# The hardest part ended up being refactoring. I think we
# also had trouble with changing the value of array element.
# In our attempt on lines 82-87, we had put "e" instead of
# number[i] or else the array was not modified.

# What new methods did you find to help you when you refactored?

# We used "&:to_i" and neither of us had used the & + :symbol
# method before. That helped make it a little more readable.
# We both hope to understand it more, though, because we were
# confused about how to use it in other situations.

# What concepts or learnings were you able to solidify in this
# challenge?

# Even though it was at first an issue for us, I think we
# both solidified the best way to change and access array
# (and hash, for that matter) values. In order to
# destructively change the values you have to actually
# access them first. I also learned better how to use
# class methods and the methods within them.
