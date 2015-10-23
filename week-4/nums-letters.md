RELEASE 1

  What does puts do?

    Puts returns nil and goes one step further than print; it prints your output on a new line.

  What is an integer? What is a float?

    An integer is a number without a decimal point. A float is a number with decimal points.

  What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

    The difference between float and integer division is that integer division can only output integers. This can be explained with non-programming language. If you divide two floats (11.0 / 2.0) then you will get a float as your answer (5.5). If you try the same thing with integers (11 / 2), the answer will be 5, even though in arithmetic, you would say the answer is 5.5.

RELEASE 2

  Hours in a year
    ```ruby
    puts 24*365
    ```

  Minutes in a decade
    ```ruby
    puts 60*24*(365*10+2)
    ```

RELEASE 5 (with links)

4.2.1 [Defining Variables](defining-variables.rb)
4.2.2 [Simple String Methods](simple-string.rb)
4.2.3 [Local Variables an Basic Arithmetical Operations](basic-math.rb)

RELEASE 7

How does Ruby handle addition, subtraction, multiplication, and division of numbers?

  Ruby handles mathematical operations in a fairly straightforward way. It follows order of operations the same way that PEMDAS dictates, and all of the typical keyboard indicators.

What is the difference between integers and floats?

  Ruby handles all numbers as either integers or floats. Integers are numbers without decimals (1, 40, 3333) and floats are numbers with decimals (0.4, -9.0, 34.26).

What is the difference between integer and float division?

  Integer division produces integers as a result, and the answer is rounded down if there's a remainder. Float division produces floats as a result, making the answer mathematically "correct" or "accurate."

What are strings? Why and when would you use them?

  Strings are groups of letters (or numbers). We use them for text or blocks of characters that we want to express as an uneditable unit.

What are local variables? Why and when would you use them?

  Local variables are used to store something (a string, number, etc.) that you want to use in your code/program. Local variables are set by the user and have to start with a lowercase letter or an underscore.

How was this challenge? Did you get a good review of some of the basics?

  This challenge was pretty easy. The only thing that tripped me up was how to change numbers to floats and the fact that I tried to divide the numbers incorrectly. I liked it as a review -- good to get the basics down before moving on.