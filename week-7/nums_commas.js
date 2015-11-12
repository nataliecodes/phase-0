// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: Sasha Tailor.

// Pseudocode

// Input: integer
// Output: string

// Steps
// 1. Take in integer as argument to the function
//    1a. If integer is less than 1000 return the number (it won't need commas)
// 2. Turn integer into string
// 3. Split the string with single character into an array
// 4. Reverse the array
// 5. Create new empty result array
// 6. For each index in array, if index + 1 is NOT divisible by 3, add digit to empty result array
// 7. If index + 1 IS divisible by 3, add digit + comma to array
// 8. Reverse new array and then join new array with NO separators

// 7. Join each array element with a comma separator

// Initial Solution

function separateComma(num) {
  if (num < 1000) {
    return num;
  }
  var numArray = num.toString().split('').reverse();
  var newArray = [];
  for (var i = 0; i < numArray.length; i++) {
    if ((i + 1) % 3 != 0 || i == numArray.length - 1) {
      newArray.push(numArray[i]);
    }
    else {
      newArray.push(numArray[i], ",");
    }
  }
  return newArray.reverse().join('');
}

console.log(separateComma(1569743))

// Refactored Solution

function separateComma(num) {
  if (num < 1000) {
    return num.toString();
  }
  var numArray = num.toString().split('').reverse();

  for (var i = 3; i in numArray; i += 3) {
    numArray.splice(i,0,",");
    i++;
  }
  return numArray.reverse().join('');
}

console.log(separateComma(1569743))

// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(1000) === "1,000"),
  "SeparateComma should return 1,000.",
  "1. "
)

assert(
  (separateComma(55) === "55"),
  "SeparateComma should return 55 as a string.",
  "2. "
  )

assert(
  (separateComma(1569743) === "1,569,743"),
  "SeparateComma should return 1,569,743.",
  "3. "
)

// Reflection

// What was it like to approach the problem from the perspective
// of JavaScript? Did you approach the problem differently?

// It was a little different because there aren't as many built-in
// methods. We also found ourselves often asking 'Is there a JavaScript
// method for that? Or it it only Ruby?' We approached it sort of
// the same way in the end, though, because it was as if we did
// the most basic Ruby methods. The punctuation was the most
// irritating thing to deal with.

// What did you learn about iterating over arrays in JavaScript?

// It's not as simple as using 'each' in Ruby. We used
// 'for (var i = 3; i in numArray; i += 3) {}', which is very
// different than Ruby. It was nice that we were able to just
// use i without having to declare it as an index.

// What was different about solving this problem in JavaScript?

// The main difference is what I wrote just above: using 'for'
// to declare the for loop's parameters. This syntax/style,
// and even the logical structure, is more involved than Ruby.

// Besides that, we simply had to research the proper way to use
// methods and variables since we don't have JS experience. So,
// there was more research involved.

// What built-in methods did you find to incorporate in your
// refactored solution?

// We used splice, which simplified our code a lot. instead of
// creating a new array and pushing 3 digits plus a comma, we
// were able to basically just "insert" a comma at any place
// where the index, starting at 3, was then divisible by 3.