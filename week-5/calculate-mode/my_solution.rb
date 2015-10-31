# Calculate the mode Pairing Challenge

# I worked on this challenge with Luis.

# I spent 2.3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

=begin
0. Pseudocode

What is the input?
Input: Array

What is the output? (i.e. What should the code return?)
Output: The mode - an array

What are the steps needed to solve the problem?
1. Take in array
    1.1 Make an empty hash
  2. Iterate through each value and insert it into an empty hash
  3. Assign each key its own value, starting at 1
  4. If the key already exists, increase the value by 1
  5. Once iteration is over, print an array of all keys with the highest value

=end

# 1. Initial Solution

  def mode(array)

    mode_hash = {}
    mode_array = []
    max = 0

    array.each do |element|

    if mode_hash.has_key?(element)
      mode_hash[element] += 1
    else
      mode_hash.store(element, 1)
    end
    end

    mode_hash.each do |key,value|
        if value > max
          max = value
          mode_array.clear
          mode_array.push(key)
        elsif value == max
          mode_array.push(key)
        else
        end
      end
    return mode_array
  end

# 3. Refactored Solution

# We tried to refactor for about 20ish minutes and gave up!
# We had already been working for 2 hours so we decided to timebox ourselves and stop.

# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

  We used both hashes and arrays -- we turned an array into
  a hash and then back into an array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

  I think not. This was harder to break down because
  we had array-->hash-->array and we had look up
  methods in order to get it to work.

What issues/successes did you run into when translating your pseudocode to code?

  We forgot to do #5 for a while because we
  were so stuck on making #4 happen. But, otherwise,
  the hardest part was that we got stuck with a weird
  formatting issue.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

  We used each, has_key, clear, and push. We
  struggled with refactoring because it seemed when
  we tried to use any other methods that it created
  more work and wasn't as easy to read

=end