// Bingo Challenge

/* Pseudocode

1. Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

Create a container with the letters in the word 'bingo'
Create a function to return a random letter from that container
Create a container with the numbers 1-100
Create a function to return a random number from that container
Get those two values to be usable for the next step

2. Check the called column for the number called.

Determine the columns in the board - look for best methods to do this
Iterate through each column to look for the letter and the number


3. If the number is in the column, replace with an 'x'


4. Display a column to the console


5. Display the board to the console (prettily)

*/

// Initial Solution


// #DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
// board = [[47, 44, 71, 8, 88],
//         [22, 69, 75, 65, 73],
//         [83, 85, 97, 89, 57],
//         [25, 31, 96, 68, 51],
//         [75, 70, 54, 80, 83]]

// new_game = BingoBoard.new(board)


// ------------------------------------------------

/* 9.2.1 JavaScript Grocery List

Pseudocode

1. Create a new object that will contain pairs of information: the grocery item and the quantity
2. Be able to add items and quantities to the list
  a. Create a function to do this. Have the function take an item and quantity pair that can be forked into the existing list
3. Create a function to remove an item from the list
  a. The function will take an item's name as an argument
  b. Then, the function will iterate through each item on the list
  c. Once it reaches that list item, it will delete that item at the proper index
  d. Print an error message if someone tries to pass in an item that isn't already on the list
4. Create a function to update quantities already in the list
5. Print the list to look nice

*/

var groceryList = [["apples", 2],
                   ["bananas", 3],
                   ["beans", 1],
                   ["bread", 5],
                   ["kale", 5]];

addItem = function(item, quantity){
  for (i = 0; i < groceryList.length; i++){
    if (groceryList[i] == item){
      groceryList[i]
    };
    else{
      groceryList.push([item, quantity])
    };
};

removeItem = function(item){
  for (i = 0; i < groceryList.length; i++){
    if (groceryList[i][0] == item)
      groceryList.splice(i, 1);
    else
      console.log("Please enter an existing item to remove.")
  };
};

console.log(groceryList);
