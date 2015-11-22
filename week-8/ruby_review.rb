# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.

# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# line 7 defines the method 'assert'
# line 8 'raises' (and will return/print) "Assertion failed" unless there is a
#       true condition; if there's a true condition, 'assert' will do nothing
# line 11 creates a variable equal to a string
# line 12 asserts that name equals the correct string; when run, this returns nil
# line 13 asserts that name equals some incorrect string; when run, this will raise
#       "Assertion failed!"

# 3. Copy your selected challenge here

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

# ----------------
# Driver code converted into asserts
# ----------------

# #1
test = CreditCard.new(4563960122001999)

# #2
p test.check_card()

# #3
test2 = CreditCard.new(1111111111111111)

# #4
p test2.check_card()

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

assert { test.check_card() == true }

assert { test2.check_card() == false }

# ---------
# Convert rspec into asserts
# ---------

# describe CreditCard do
#   describe '#initialize' do
#     it 'Expects a single argument for the card' do
#       expect(CreditCard.instance_method(:initialize).arity).to eq 1
#     end

assert { CreditCard.instance_method(:initialize).arity == 1 }

    # it 'raises ArgumentError on card < 16' do
    #   expect { CreditCard.new(1) }.to raise_error(ArgumentError)
    #   end
    # end

assert { CreditCard.new(1) == ArgumentError }

    # describe '#check_card' do
    #   it 'expects no arguments to be passed' do
    #     expect(CreditCard.instance_method(:check_card).arity).to be_zero
    # end

assert { CreditCard.instance_method(:check_card).arity == 0 }

    # it 'returns true for a valid card' do
    #   card = CreditCard.new(4408041234567901)
    #   expect(card.check_card).to eq true
    #   end
    # end

assert { CreditCard.new(4408041234567901).check_card == true }

    # it 'returns false for a bad card' do
    #   card = CreditCard.new(4408041234567906)
    #   expect(card.check_card).to eq false
    #   end
    # end

assert { CreditCard.new(4408041234567906).check_card == false }

# 5. Reflection

=begin

What concepts did you review or learn in this challenge?

I learned about creating my own 'assert' messages and how we can
go through code to make tests. I watched Shadi's video, so I feel
like I have a basic primer on how they work.

What is still confusing to you about Ruby?

With regards to this exercise, I'm still confused about assert
messages and "expect." I'm not 100% sure how to translate that
into code. I also think that I will have to rewatch Shadi's
lesson which was linked in canvas.

What are you going to study to get more prepared for Phase 1?

I'm going to review blocks, procs and lambdas on Codecademy and
do further research. I also hope to be able to use Well-Grounded
Rubyist for further info and exercises.

=end