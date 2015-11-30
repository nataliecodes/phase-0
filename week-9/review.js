
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

updateItem = function(item, quantity) {
  for (var i in groceryList) {
    if (groceryList[i][0] == item) {
      groceryList[i][1] += quantity;
    };
  };
};

addItem = function(item, quantity) {
  groceryList.push([item, quantity]);
};

removeItem = function(item){
  for (i = 0; i < groceryList.length; i++){
    if (groceryList[i][0] == item) {
      groceryList.splice(i, 1)
    };
  };
};

printList = function(array){
  console.log("My grocery list:");
  var dash = ': '
  var bullet = '- '
  for (var i in groceryList) {
    console.log(bullet + groceryList[i][0] + dash + groceryList[i][1])
  };
};

printList(groceryList);
