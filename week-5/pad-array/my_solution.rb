# Pad an Array

# I worked on this challenge with Bernice.

# I spent 1 hour 40 minutes on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin
# What is the input?
INPUT = array

# What is the output? (i.e. What should the code return?)
output for pad = a different modified array,
    but original array is unchanged
output for pad! = the input array, but modified

# What are the steps needed to solve the problem?

for pad
Step 1: get inputs:
    1 array -- called "array"
    1 integer (total # of elements in array) -- called "min_size"
    OPTIONAL: 1 argument for what we will use to fill out array
        (if not specified, default = nil [the actual value of nil, not a String that says "nil"])
Step 2:
    make new variable to hold results array -- called "copy"
Step 3:
    check if length of "array" is smaller than or equal to min_size
Step 3.1
    if min_size is smaller than or equal to the lenght of "array", return "copy".
Step 3.2
    if "min_size" is larger than length of "array", pad "copy" of array with "value"
        how?
        Step 3.2.a:
            if "value" is NOT specified, put nil as padded elements
        Step 3.2.b:
            if "value" IS specified, put value of "value" as padded elements

=end


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if min_size <= array.length
    return array
  else
    padding = array.length - min_size
    counter = array.length
    while counter < min_size
        array << value
        counter += 1
    end
    return array
  end

end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  copy = []
  array.each do |variable|
      copy << variable
    end
  if min_size <= array.length
    return copy
  else
    padding = array.length - min_size
    counter = array.length
    while counter < min_size
        copy << value
        counter += 1
    end
    return copy
  end
end

# # 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
    if min_size <= array.length
      return array
    else
      (min_size - array.length).times do array.push(value)
      end
      return array
    end
end

p pad!([1, 3, 5], 5, "apple")

def pad(array, min_size, value = nil) #non-destructive
  copy = []
  copy = copy + array

  if min_size <= array.length
    return copy
  else
    (min_size - array.length).times do copy.push(value)
    end
    return copy
  end

end

# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?

  I think we were successful in doing this. My partner broke it down further than I was going to, and I saw the merit to what she did.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

  I think we were pretty good about it. I think the hardest thing was that we didn't previously state that we wanted to use a counter and a for loop. We could have come to the conclusion that we would use those more quickly if we had described iteration in our pseudocode. I think we were really good at differentiating our if/else branches.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  Our intial solution was not successful at first. First, we needed to explicitly return the values - this was easy to fix. Then, we got errors because we were trying to fork "array[item]" to our array copy (in pad, not pad!) and that did not work. We solved this by using a puts statement. Then, we realized that

When you refactored, did you find any existing methods in Ruby to clean up your code?

  We found a few things, but none that really seemed to make our code clearer or more concise.

How readable is your solution? Did you and your pair choose descriptive variable names?

  We think our solution is very readable. We tried to make the most obviously descriptive variable names (i.e. "padding").

What is the difference between destructive and non-destructive methods in your own words?

  Destructive methods change their objects permanently, while non-destructive methods do not. Non-destructive methods are like different versions of your method.

=end