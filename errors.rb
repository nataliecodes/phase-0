# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent 1.2 hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   puts "What's there to hate about #{thing}?"
# end

# cartman_hates("his mom")

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# =>errors.rb

# 2. What is the line number where the error occurs?
# => Line 170

# 3. What is the type of error message?
# => Syntax error

# 4. What additional information does the interpreter provide about this type of error?
# => It was an unexpected end-of-input, and expected instead "keyword_end."

# 5. Where is the error in the code?
# =>After the word "comment." on the last line of the code.

# 6. Why did the interpreter give you this error?
# => I think it gave an error because it said a "while true" but didn't give any parameters for the true condition. You can just take out the "while true" part and the code works. I made called the method on "his mom" and it worked.

# --- error -------------------------------------------------------

# south_park = 1

# 1. What is the line number where the error occurs?
# => Line 41

# 2. What is the type of error message?
# => NameError

# 3. What additional information does the interpreter provide about this type of error?
# =>It says that the local variable or method 'south_park' is undefined for "main"

# 4. Where is the error in the code?
# =>It doesn't specify a line; it's just all an error?

# 5. Why did the interpreter give you this error?
# => The code written is not apparently a variable or a method - there is nothing else to go with it. it simply doesn't mean anything because there's no indication of what this is supposed to do.

# --- error -------------------------------------------------------

# def cartman()
# end

# 1. What is the line number where the error occurs?
# => Line 60

# 2. What is the type of error message?
# => NoMethodError

# 3. What additional information does the interpreter provide about this type of error?
# => It says that 'cartman' is undefined for the main:Object.

# 4. Where is the error in the code?
# => Doesn't specify a location - the thing in its entirety doesn't make sense.

# 5. Why did the interpreter give you this error?
# => Because the method, cartman, was not defined. There is no "end" and no "def."

# --- error -------------------------------------------------------

# def cartmans_phrase()
#  puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => Line 80 (and 84? I think just 80.)

# 2. What is the type of error message?
# => ArgumentError

# 3. What additional information does the interpreter provide about this type of error?
# => 'Cartman's phrase' has the wrong number of arguments - 1 for 0.

# 4. Where is the error in the code?
# => In line 80. It can't accept arguments.

# 5. Why did the interpreter give you this error?
# => Because the method 'cartmans_phrase' can't accept arguments. You can't pass in 'I hate Kyle' and expect to get anything.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#  puts offensive_message
# end

# cartman_says("you suck!")

# 1. What is the line number where the error occurs?
# => Line 103

# 2. What is the type of error message?
# => Argument error

# 3. What additional information does the interpreter provide about this type of error?
# => It says that there is the wrong number of arguments for cartman_says - 0 for 1.

# 4. Where is the error in the code?
# => In line 107.

# 5. Why did the interpreter give you this error?
# => You have to put in an argument in order for it to work. You can't just call the method without an argument. In theory, the argument would now be 1 for 1.

# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# => Line 126

# 2. What is the type of error message?
# => Argument Error

# 3. What additional information does the interpreter provide about this type of error?
# =>  It says that cartmans_lie has the wrong number of arguments when it is called in line 130.

# 4. Where is the error in the code?
# => Line 130, where there is no 'name,' only a 'lie.'

# 5. Why did the interpreter give you this error?
# => Because cartmans_lie is supposed to take 2 arguments (lie + name), not just one.

# --- error -------------------------------------------------------

# puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => Line 149

# 2. What is the type of error message?
# => TypeError

# 3. What additional information does the interpreter provide about this type of error?
# => That the string (respect...) can't be changed into a number.

# 4. Where is the error in the code?
# => The whole line is an error.

# 5. Why did the interpreter give you this error?
# => Because "Respect my auhtoritay" is a string, not a number. You can't multiple anything by "Respect my authoritay." It doesn't make sense.

# --- error -------------------------------------------------------

# puts amount_of_kfc_left = 20/2

# 1. What is the line number where the error occurs?
# => Line 168

# 2. What is the type of error message?
# => Zero Division Error

# 3. What additional information does the interpreter provide about this type of error?
# => It says that it's trying to divide something by zero.

# 4. Where is the error in the code?
# => The '0.'

# 5. Why did the interpreter give you this error?
# => Because you can't divide anything by 0 - it is a mathematical error.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 187

# 2. What is the type of error message?
# => Load Error

# 3. What additional information does the interpreter provide about this type of error?
# => It says that the method can't load that file.

# 4. Where is the error in the code?
# => The filename, I guess.

# 5. Why did the interpreter give you this error?
# => Because it can't find the "cartmans_essay.md" file. I don't have one in my directory. If I had a file in my phase-0 folder called "carmans_essay.md," I think this would work.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

Which error was the most difficult to read?

  The first one. I didn't understand why the error was occurring on the last line of the file. After seeing that it said it was a 'tricky' error, I realized I should ignore that and just look for what was wrong.

How did you figure out what the issue with the error was?

  As per above, I looked back to the actual code. The while true was weird to me. I just didn't know why it was there. So I tried to see if I could keep it; instead, I realized I should just drop it.

Were you able to determine why each error message happened based on the code?

  I think so.

When you encounter errors in your future code, what process will you follow to help you debug?

  Running the file in command will definitely help. I think it will be helpful to comment out the sections that don't need to be tested, too. I will also hopefully have a pair to help me review -- could have sped up my challenge!

=end