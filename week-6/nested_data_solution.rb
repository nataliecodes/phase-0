# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |num|
  if num.is_a?(Array)
    num.map! { |sub_num| sub_num += 5 }
  else
    num += 5
  end
end

# Refactored

number_array.map! do |num|
  num.is_a?(Array) ? num.map! { |sub_num| sub_num += 5 } : num += 5
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_ly(startup_name)
startup_name.map! do |word|
  if word.is_a?(Array)
    word.map! do |sub_word|
      if sub_word.is_a?(Array)
        sub_word.map! { |sub_sub_word| sub_sub_word += "ly" }
      else
        sub_word += "ly"
      end
    end
  else
    word += "ly"
  end
end
end

# REFLECTION

# What are some general rules you can apply to nested arrays?

# I'm not sure if this is completely true, but you can use map
# or map! and if/else statements in order to go through each
# element and do certain things to that element if it is or isn't
# another array. I guess it's also fair to say that you can
# generally use methods to find

# What are some ways you can iterate over nested arrays?

# We used a combination of map and if/else statements.
# You could also use collect (though that's materially
# the same as map). You can also use "each", but in this
# instance we wanted to modify the original, so we used
# a destructive method.

# Did you find any good new methods to implement or did you
# re-use one you were already familiar with? What was it
# and why did you decide that was a good option?

# We used mostly methods we were already familiar with -
# map and is_a. I think one of the reasons we didn't look
# for or use anything else/fancier is that it would have
# made the code harder to read.

# We did both use a ternary operator for the first time
# when refactoring. This actually worked pretty well for
# shortening the if/else code. But, we did agree that
# this could be confusing, which is why we didn't use it
# to refactor the bonus challenge.