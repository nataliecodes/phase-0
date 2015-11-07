#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: a function that takes a name from another function
# Output: a greeting that states the name
# Steps:

# 1. Create a function that takes a name.
# 2. Create another function that begins by producing a name
#    from the previous function.
# 3. This new function will begin by taking the name
#   and inserting it into a new function which is a
#   greeting.

class NameData

  attr_accessor :name

    def initialize
      @name = "Natalie"
    end

end

class Greetings

  attr_accessor :my_name

    def initialize
      @my_name = NameData.new
    end

    def hello
      puts "Hello #{@my_name.name}! How wonderful to see you."
    end

end

# Reflection

# RELEASE 1

# 1. What are these methods doing?

# The methods start the Profile class by assigning values to
# certain instance variables. Then, the class allows those
# variables to be changed by certain methods defined in the
# class (i.e. change_my_name will change the value of @name).

# 2. How are they modifying or returning the value of instance variables?

# They modify the value of instance variables by writing a new
# function that sets the instance variables equal to a new value.

# RELEASE 2

# What changed between the last release and this release?

# In this release, we turned @age into a readable variable
# that can be read and altered among all of the methods in
# the class without having to define it in its own method.

# What was replaced?

# what_is_age was removed and replaced with
# attr_reader :age. By using the attr_reader, you can use
# age throughout the class, and you can also call it as a
# method on an instance of Profile and it will return
# the value of :age.

# Is this code simpler than the last?

# I think it is. Instead of creating an entirely new method
# for getting the age (i.e. what_is_age), you can just call
# it on the class like you would any other method.

# RELEASE 3

# What changed between the last release and this release?

# Now, age is writable because we used it with attr_writer,
# not just attr_reader. That also makes calling #.age on
# a Profile class actually change the value of age.

# What was replaced?

# change_my_age was replaced with attr_writer :age. As per
# the above, that means that we were able to remove a
# method from the class.

# Is this code simpler than the last?

# I believe so. As in release 2, it does seem like it's much
# better form to use attr_reader and attr_writer instead of
# creating new methods for simply changing variables.

# RELEASE 6

# What is a reader method?

# A reader method makes a variable readable and therefore
# accessible throughout a class.

# What is a writer method?

# A writer method also makes a variable accessible throughout
# a class, but this time the variable can be overwritten.

# What do the attr methods do for you?

# The attr methods allow reading/writing of variables throughout
# a class. They also allow the variables to be called as
# functions on instances of that class.

# Should you always use an accessor to cover your bases?
# Why or why not?

# You should not always use an accessor because then a
# variable can be overwritten unintentionally. You should
# only use it if you want the variable to be able to be
# changed.

# What is confusing to you about these methods?

# I'm confused about calling the methods between classes,
# still. I didn't realize that I had to call "name" in the
# Greetings function. But, I think as I do this type of
# thing more, I will figure it out.