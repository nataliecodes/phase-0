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


How do you define a method?


What is the difference between a local variable and a method?


How do you run a ruby program from the command line?


How do you run an RSpec file from the command line?


What was confusing about this material? What made sense?



=end