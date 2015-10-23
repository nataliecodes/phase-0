# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts 'Give me your first name.'
first_name = gets.chomp
puts 'And your middle name.'
middle_name = gets.chomp
puts 'And your last name.'
last_name = gets.chomp
puts 'Cool. Your name is ' + first_name + ' ' + middle_name + ' ' + last_name + '.'

# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts 'Give me your favorite number.'
favnum = gets.chomp
bigger_num = favnum.to_i + 1
puts 'Are you sure you don\'t prefer ' + bigger_num.to_s + '?'

=begin

How do you define a local variable?

  You type in the name of the variable (must start with a lowercase letter or an underscore) and set it equal to a value. That value can be any letters and numbers you want. Make sure you put the variable on the lefthand side of the equal sign, and the value to the right.

How do you define a method?

  Defining a new method has to have at least these parts: "def" + "[name of method]" + [code (or you can leave this part empty)] + "end". Any method needs an "object," which can be a string, integer, etc. with other methods inside of it (like puts or gets.chomp).

What is the difference between a local variable and a method?

  A local variable is an assigned value and can be a string, integer, float, etc. A method uses variables as objects. i.e. the "puts" method will output a string if you code "puts 'this is a string'"

How do you run a ruby program from the command line?

  Type in "ruby [name of file].rb" and hit enter. You want to navigate to the directory of that file in order to run it (you may have files named the same thing in different folders).

How do you run an RSpec file from the command line?

  Type in "rspec [name of file].rb" and hit enter. Again, you want to be sure you've navigated to the directory of that file first.

What was confusing about this material? What made sense?

  Confusing: I didn't realize that I had to put a period at the end of the address string. It took me a while to figure it out. I think that it's important to really know what each variable means so that when you get an error, you can go back to the basics and check those first. You have to spell out every. single. instruction. for the computer.

  Sensical: Once I researched things and found a solution, they did make sense and my confusion lifted. I also think that strings, floats and integers and the 10 methods we've learned (puts, gets, =, etc.) all make sense.

=end