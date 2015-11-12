// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myAge = 25
console.log(myAge)
myAge = myAge + 5
console.log(myAge)

// Favorite food prompt (done in console)

console.log(prompt("What's your favorite food?"), alert("Hey! That's my favorite too!"))

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle

var triangleLine = ''
var counter = 0
while (counter < 7) {
  console.log(triangleLine += '#');
  counter += 1;
}

// FizzBuzz

var num = 0
while (num < 100) {
  num += 1;
  if (num % 3 == 0 && num % 5 == 0) console.log("FizzBuzz");
  else if (num % 5 == 0) console.log("Buzz");
  else if (num % 3 == 0) console.log("Fizz");
    else console.log(num);
}

// Chess Board



// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
  if (num1 < num2)
      return num1;
    else if (num1 > num2)
      return num2;
    else
      return num1 + ' ' + num2;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Natalie",
  age: 25,
  "3 favorite foods": ["cheese", "chocolate", "bread"],
  quirk: "Obsessed with dogs"
}
