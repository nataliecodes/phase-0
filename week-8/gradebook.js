/*
Gradebook from Names and Scores
I worked on this challenge with: Luis Fernando Plaz.
This challenge took me 1.5 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// var gradebook = {
//   "Joseph": {},
//   "Susan": {},
//   "William": {},
//   "Elizabeth": {}
// };

// gradebook["Joseph"].testScores = scores[0];
// gradebook["Susan"].testScores = scores[1];
// gradebook["William"].testScores = scores[2];
// gradebook["Elizabeth"].testScores = scores[3];

// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores.push(score);
// };

// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores);
// };

// average = function(array){
//   var sum = 0;
//     for (var i = 0; i < array.length; i++) {
//       sum += array[i];
//     };
//   return (sum / array.length);
// };

// __________________________________________
// Refactored Solution

var gradebook = {
  "Joseph": {},
  "Susan": {},
  "William": {},
  "Elizabeth": {}
};

gradebook["Joseph"].testScores = scores[0];
gradebook["Susan"].testScores = scores[1];
gradebook["William"].testScores = scores[2];
gradebook["Elizabeth"].testScores = scores[3];

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

average = function(array){
  var total = array.reduce(function(a,b) {
    return a + b;
  });
  return total / array.length;
};


// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

// I learned that in order to add a function to an object,
// you have to create the function just like how you would
// an object. You can then call it just like you would
// call a property on an object, or something like that.

// How did you iterate over nested arrays in JavaScript?

// We used a for loop to iterate over each item in the array
// for our initial solution, and we just had to select each
// array within the array by using the index number. Then,
// in getAverage, we didn't have to do much else, since 'name'
// is taken as the argument.

// Were there any new methods you were able to incorporate?
// If so, what were they and how did they work?

// We learned reduce. It took us a while to figure out. In our
// code, reduce works by on an array. We called it with two
// arguments, a and b. 'a' is the previous value, and 'b' is the
// current value. We don't pass in an 'initialValue,' which can
// come after setting the previous and current values, which
// means that the first 'a' value is first value and the first
// 'b' value is the second value. Then, reduce will make a new
// 'a', which is equal to the second value, and a new 'b', which
// is equal to the third value, and so on. By doing this, reduce
// ends up totaling all of the items in the array.

// The only issue we had was with return values. We ended up
// having to 'return' twice, which doesn't seem ideal. But, we
// couldn't otherwise think of a way around it.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)