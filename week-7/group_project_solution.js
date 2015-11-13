oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

// Person #1 - User Stories
/*
As a user, I will be want to be creating a basic statistics calculator
that has a number of standard functions. To Test these functions, I
will use the two example arrays above, where one has an odd number of
elements, and the other has an even number of elements.

Story #1: As a user, I will want a function called "sum" that is able
to calculate the sum of an array.

Story #2: As a user, I will want a function called "mean" that is able
to calculate the mean average of an array.

Story #3: As a user, I will want a function called "median" that is
able to calculate the median of an array.
*/

// Person #2 - Pseudocode

/*

Story #1:
  - Create a new function that can take a group of numbers (array) as
    an argument.
  - Create an number variable called 'sum' and set it equal to zero.
    We will use this as a way to store the sum of the array.
  - Have the function iterate through each element of the array under
    the following conditions:
    -- Starting at index 0, for each element in the array, and increasing
       that index by 1 each time, increase sum incrementally by the
       array index's value.
  - Be sure that the new variable 'sum' is returned.

Story #2:
  - Repeat the steps in Story 1 and continue from there (because we will
    need the sum of the numbers in order to calculate the mean) [I think
    you could also call our new method ('sum') on the array of numbers, if
    you can get this into something like a Ruby class.]
  - Create a new variable called 'mean' and set it equal to zero. We will
    use this as a way to store the mean of the array.
  - Set mean equal to the 'sum' divided by the number of numbers in the
    array, or the 'length' of the array.
  - Be sure that the new variable 'mean' is returned.

Story #3: (not sure if we have to include sorting here, since the arrays are
already in ascending order, but put it in to cover my bases)
  - Create a new function that can take a group of numbers (array) as
    an argument.
  - Create a new variable called 'median' and set it equal to zero. We
    will use this to store the meidian of the array.
  - Sort the array, but be careful to use the correct sort function. The
    correct sort function compares the numbers in the array, it doesn't
    sort them solely based on their first letter.
  - If there is an even number of numbers in the array (i.e. if the
    length of the array has no remainder when it is divided by 2):
    -- Determing the two middle elements by dividing the length of
       the array by 2 and using that quotient as the first index number.
    -- That quotient and the index number before it are the two values
       that we have to average to get the mean.
    -- Set 'median' equal to the sum of those two values divided by 2.
       * The median may not be an Integer, so account for floats. *
  - Otherwise, if there is an odd number of numbers in the array (i.e. if
    the length of the array HAS a remainder when it is dividied by 2):
    -- Calculate the middle element by dividing the length of the array by
       2 and then getting rounded-down version ('floor') of the index of the
       middle number
    -- Set 'median' equal to the value of that index
  - Be sure that your program returns 'median'

*/

// Person #3 - Initial Code Solution (v1)


// Person #4 - Initial Code Solution (v2)



// Person #5 - Refactor and translate solution back to user stories (v1)


// Person #6 - Refactor and translate solution back to user stories (v2)