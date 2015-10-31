
# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2

# Pseudocode:
# 1. Go through each element in the container (container here = the source array)
# 2. Determine that if the elmement is an integer, that we want to add the inputted amount (the thing_to_modify)
# 3. Return that value permanently, but keep the words the same

def my_array_modification_method!(source, thing_to_modify)
  source.map! {|elem|
    if elem.is_a?(Integer)
      elem += thing_to_modify
    else
      elem
    end
   }
end

# Pseudocode
# 1. Go through each pet and age in the list (in this case, the source hash).
# 2. Add the desired amount (thing_to_modify) to the age of each pet.
# 3. Return a permanently changed list of info.

def my_hash_modification_method!(source, thing_to_modify)

  source.each do |pet,age|
    source[pet] = age + thing_to_modify
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# 1. map!: works similarly to "each," which I think people
#          are more familiar with. The destructive "map!"
#          replaces the element permanently.
# 2. is_a?: returns a boolean and takes a class (i.e. Integer
#           as above) as an argument.
# 3. each: works through each element of a hash or array and
#          does the same thing to that element.

# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
#
#
#


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# 1. map!: works similarly to "each," which I think people
#          are more familiar with. The destructive "map!"
#          replaces the element permanently.
# 2. is_a?: returns a boolean and takes a class (i.e. Integer
#           as above) as an argument.

  # For example, I will use my above exercise and comment
  # through it to describe each step.

  #   def my_array_modification_method!(source, thing_to_modify)

  #     We want to increase each element in the array that is
  #     and integer. In order to choose the integer and permanently
  #     replace it, we can map! the array. I call each element of
  #     the array "elem," and perform the same conditional to each elem.

  #     source.map! {|elem|

  #       The reason I then used "is_a(Integer)" is because we want
  #       to change only the elems that are integers. So, since
  #       "elem.is_a?(Integer)" returns a boolean, this "if" will
  #       return true and increment the elem. Otherwise, it just maps
  #       and returns the unchanged elem.

  #       if elem.is_a?(Integer)
  #         elem += thing_to_modify
  #       else
  #         elem
  #       end
  #      }
  #   end

# 3. each: works through each element of a hash or array and
#          does the same thing to that element.

#     In the above, each becomes destructive beacause I iterate
#     through each key and value pair and alter the actual key
#     (source[pet]). I think that most of use have a good
#     understanding of each, and that the definition above
#     suffices.

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# Explaining research to others helps clarify your thinking.
# It also made me want to research further to answer any
# questions I still had or parts I didn't cover.