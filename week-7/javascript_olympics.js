// JavaScript Olympics

// I paired with Carolina Medellin on this challenge.

// This challenge took me 1.5 hours.

// Bulk Up

function athletes(list) {
  for (i = 0; i < list.length; i++) {
    console.log(list[i][0] + " won " + list[i][1]);
  }
};

var list = [["Natalie", "soccer"], ["Carolina", "tennis"], ["Sasha", "football"]];

console.log(athletes(list))

// Jumble your words

function backwards(string) {
  string = string.split('').reverse().join('');
  console.log(string);
}

backwards("hey!");

// 2,4,6,8

var array = [1, 2, 3, 4, 5, 6];

function evens(array) {
  newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      newArray.push(array[i]);
    };
  };
  console.log(newArray);
}

evens(array)

// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name,
    this.age = age,
    this.sport = sport,
    this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// I definitely got a better handle on how to create functions
// in JS. Well, I had never made any functions before, so this
// was integral for my understanding of JS functions. Getting
// to know the JS syntax is key, since it still maintains the
// same functionality as Ruby.

// What are constructor functions?

// Constructor functions are sort of like the 'new' in Ruby
// because they also initialize new instances of a function.
// For example, if you have a function called "person",
// which is a function that has properties about a person,
// you can initialize a new instance of person with a
// constructor function like this:

// var newPerson = new person(required arguments)

// The "new person()" is the constructor function.

// How are constructors different from Ruby classes (in your
// research)?

// From what I have seen, constructors can start a new
// function or object with certain arguments or information.
// You can also access that information from outside the thing
// you're constructing. But, with a Ruby class, you can't
// change or edit the function or properties of that class
// from outside of it.