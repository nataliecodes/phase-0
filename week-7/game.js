// Design Basic Game Solo Challenge

// This is a solo challenge.

// Your mission description:
// Overall mission: Locate the battleship and therefore sink it
// Goals: Guess coordinates, avoid bombs
// Characters: Player, bomb
// Objects: Player(success), Battleship(position), Bomb(position)
// Functions: Guess, check

// Pseudocode
//
// Object: Player will be an object with a property to measure success
// Object: Bomb will be an object with a random location
// Allow player to guess position
// Check player's guess against battleship and bomb
// If it hits the battleship, player wins; if it hits bomb, player loses


// Initial Code

// Position is going to be a random number from 1 to 15. This game is VERY basic.

// var player = {
//   success: false,

//   turn: function(guess){
//     if(guess === battleship.position){
//       console.log("You sunk my battleship!")
//     }
//     else if(guess === bomb.position){
//       console.log("You got blown up!")
//     }
//     else{
//       console.log("Try again!")
//     }

//     battleship.position = Math.floor(Math.random()*(16-1)+1);
//     console.log("The battleship's position is " + battleship.position)
//     bomb.position = Math.floor(Math.random()*(16-1)+1);
//     console.log("The battleship's position is " + bomb.position)
//   }
// }

// var battleship = {
//   position: Math.floor(Math.random()*(16-1)+1)
// }

// var bomb = {
//   position: Math.floor(Math.random()*(16-1)+1)
// }


// player.turn(1)

// Refactored Code

var battleship = {
  posX: Math.floor(Math.random()*(16-1)+1),
  posY: Math.floor(Math.random()*(16-1)+1)
}

var bomb = {
  posX: Math.floor(Math.random()*(16-1)+1),
  posY: Math.floor(Math.random()*(16-1)+1),
}

console.log("The battleship's position is " + battleship.posX + "," + battleship.posY)
console.log("The bomb's position is " + bomb.posX + "," + bomb.posY)

var player = {
  success: false,
  turn: function(guess){
    if(guess === battleship.position){
      console.log("You sunk my battleship!");
      success: true;
    }
    else if(guess === bomb.position){
      console.log("You got blown up!")
    }
    else{
      console.log("Try again!")
    }
  }
}

player.turn(1,2);

// Reflection
//
// What was the most difficult part of this challenge?

// I found everything about this challenge really difficult. It was really
// hard for me to put any Pseudocode into actual code. I relied heavily on
// other online code I found. I feel like we were thrown into this with no
// real examples of creating complex objects beforehand.

// What did you learn about creating objects and functions that interact
// with one another?

// First, it matters a lot where you first declare and define/describe the
// objects. I had been repeating some info unnecessarily in my first game
// iteration and once I moved my battleship and bomb locations, it worked
// and looked better.

// Did you learn about any new built-in methods you could use in your
// refactored solution? If so, what were they and how do they work?

// I did not end up using new methods in my refactorization - I just
// improved my code's DRYness. Again, I had lots of trouble adding more
// functionality, so I decided to instead try to improve what I already
// had.

// How can you access and manipulate properties of objects?
//
// There are a few ways to access and manipulate properties of objects.
// I opted for creating a default setting (i.e. 'success' began as false)
// and then changing it in the if statement that followed.