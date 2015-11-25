# OO Basics: Student

# I worked on this challenge with Zach Schatz.
# This challenge took me 2 hours.

# Pseudocode

# create students array
# create 5 Student objects within
# Assign two properties to each Student - first_name and scores

# avg
# letter_grade

# linear_search
#   go through each array element to search for the search term
  #   if in array, return position; if not, return -1

# Initial Solution

# class Student
#   attr_accessor :scores, :first_name
#   attr_reader :avg

#   def initialize(first_name, scores)   #Use named arguments!
#     @first_name = first_name
#     @scores = scores
#   end

#   def average
#     total = 0
#     @scores.each {
#       |i| total += i
#       }
#     @avg = total / @scores.length
#   end

#   def letter_grade
#     if @avg >= 90
#       return 'A'
#     elsif @avg >= 80 && @avg < 90
#       return 'B'
#     elsif @avg >= 70 && @avg < 80
#       return 'C'
#     elsif @avg >= 60 && @avg < 70
#       return 'D'
#     else
#       return 'F'
#     end
#   end

# end

# def linear_search(array, search_term)
#   array.each_with_index do |student, index|
#     if student.first_name == search_term
#       return index
#     else
#       return -1
#     end
#   end
# end

# def binary_search(first_name, search_term, )
# We tried binary search a million different ways and couldn't get it
# to work for this challenge. Hoping to continue to research to better
# understand it!
# end

# alex = Student.new("Alex", [100,100,100,0,100])
# mary = Student.new("Mary", [85,90,75,85,95])
# john = Student.new("John", [40,45,45,45,45])
# jacob = Student.new("Jacob", [81,88,80,85,80])
# ali = Student.new("Ali", [35,86,43,80,100])

# students = [alex, mary, john, jacob, ali]

# Refactored Solution

class Student
  attr_accessor :scores, :first_name
  attr_reader :avg

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    @avg = @scores.reduce(:+) / @scores.length
  end

  def letter_grade
    case @avg
      when 0..59
        return 'F'
      when 60..69
        return 'D'
      when 70..79
        return 'C'
      when 80..89
        return 'B'
      else
        return 'A'
    end
  end

end

def linear_search(array, search_term)
  array.each_with_index do |student, index|
    if student.first_name == search_term
      return index
    else
      return -1
    end
  end
end

alex = Student.new("Alex", [100,100,100,0,100])
mary = Student.new("Mary", [85,90,75,85,95])
john = Student.new("John", [40,45,45,45,45])
jacob = Student.new("Jacob", [81,88,80,85,80])
ali = Student.new("Ali", [35,86,43,80,100])

students = [alex, mary, john, jacob, ali]

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Reflection

# What concepts did you review in this challenge?

# We reviewed classes and how to use them to initialize objects,
# test-driven development's utility (the tests guided us well when
# we were stuck), searching with indices, and the utility of being
# able to call information about an object using class variable
# calling (this was very helpful for the linear_search)

# What is still confusing to you about Ruby?

# Binary search was really tough for us! We couldn't get it to
# work because we didn't see how to translate words we were looking
# for into a search made for integers.

# What are you going to study to get more prepared for Phase 1?

# Definitely going to reach out to some other phase 0 people and
# ask them how they got binary search to work! I'm hoping to
# read up on it in order to learn more about it.