// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Alan Alcesto:
// This challenge took me 2.5 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// - loop through the votes starting with a zero counter, add 1 for each vote cast for the person
// - in order to get the vote count:
//    - create an empty data container (array)
//    - create a dummy integer variable called 'max' to store the max value
// - for each position in voteCount
//   - for each nominee in voteCount's position
//      - add the total tally of each nominee to the value container (array)
//      - set max equal to the maximum integer in the container (array)
//      - if the key is the one with a value of max, change the value of
//        officer's position winner to that key (aka the nominee's name)

// __________________________________________
// Initial Solution

for (var key in votes){
  voteCount.president[votes[key].president] = 0;
  voteCount.vicePresident[votes[key].vicePresident] = 0;
  voteCount.secretary[votes[key].secretary] = 0;
  voteCount.treasurer[votes[key].treasurer] = 0;
};

for (var key in votes){
  voteCount.president[votes[key].president]++;
  voteCount.vicePresident[votes[key].vicePresident]++;
  voteCount.secretary[votes[key].secretary]++;
  voteCount.treasurer[votes[key].treasurer]++;
};

for (var position in voteCount){
  var values = new Array();
  var max = 0;

  for (var nominee in voteCount[position]){
    values.push(voteCount[position][nominee]);
  };

  max = Math.max.apply( Math, values );

  for (var nominee in voteCount[position]){
    if (voteCount[position][nominee] == max){
    officers[position] = nominee;
    };
  };

};



// __________________________________________
// Refactored Solution



for (var key in votes) {
  for (var position in voteCount){
    voteCount[position][votes[key][position]] = 0;
  }
};

for (var key in votes) {
  for (var position in voteCount){
    voteCount[position][votes[key][position]] += 1;
  };
};

for (var position in voteCount){
  var values = new Array();
  var max = 0;

  for (var nominee in voteCount[position]){
    values.push(voteCount[position][nominee]);
  };

  max = Math.max.apply( Math, values );

  for (var nominee in voteCount[position]){
    if (voteCount[position][nominee] == max){
    officers[position] = nominee;
    };
  };

};


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

// I learned that, just like in Ruby, you may have to do loops iterated
// within loops. It was not that easy to keep track of every nest. Once
// we realized that we could put a key/value item in the 'for' loop
// (i.e. the use of 'voteCount[position]' on line 135), the accessing of
// information made much more sense to us.

// TIP: try console-logging the value regularly first, so that you can
// see how many loops you'll have to go through and how many layers
// there are to access the element you seek.

// Were you able to find useful methods to help you with this?

// We found Math.max.apply, which took us a very long time to implement.
// We thought we could just call Math.max on an array, but that didn't
// work. I had to copy and paste in some information that would
// specifically get the info from the array. Other than that, we used
// some familiar methods: push and for...in....

// What concepts were solidified in the process of working through this challenge?

// Accessing information from nested arrays in JavaScript! We also had to
// conceptualize the idea of returning a nested array's KEY to another
// object (lines 141-144). That was tough, but we did it!



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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)