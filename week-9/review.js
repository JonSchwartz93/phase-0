// Assignment-9.2.1 - JavaScript Grocery List

// Objectives:
// 1) Create a new list
// 2) Add an item with a quantity to the list
// 3) Remove an item from the list
// 4) Update quantities for items in your list
// 5) Print the list (Consider how to make it look nice!)

// Pseudocode:
// Create a list:
// input: a string of items (example: "carrots apples cereal pizza"))
// output: object with property-value pairs (property = grocery item, value = quantity)
// steps: 
//   CREATE empty oject 'list' outside of the function so that its scope is global (accessible throughout the program, NOT just within the function)
//   Split input string into an array separated by ' '
//   Use resulting array to populate property-value pairs by iterating over the array using a FOR loop and assign each property a value of 1

// Add an item with a quantity to the list:
// input: 'list' object, string (item), integer (quantity)
// output: new object
// steps:
//   In this function, we're essentially adding a property-value pair to the 'list' object.
//   Use object[property] = value syntax to add grocery item to list
//   print updated list containing new item

// Remove an item from the list:
// input: 'list' object, string (item)
// output: new object
// steps:
//   In this function, we're essentially deleting a property-value pair from the 'list' object.
//   Use delete object[property] syntax to remove grocery item from list
//   print updated list without deleted item

// Update quantities for items on the list:
// input: 'list' object, string (item), integer (quantity)
// output: new object
// steps:
//   Create a FOR loop to iterate through the 'list' object to see if the specified item exists in the list. If it does, assign that item a new quantity.

// Print the list:
// input: 'list' object
// output: properly formatted list
// steps: Print a title for the list ("Shopping List"). ITERATE over object and for every key/value pair print to console in the followoing format: "[item_name] - [quantity]" and print this string to the console.

// Solution:
var list = {};

function createList(items){
  var listItems = items.split(' ')
  for (var i = 0; i < listItems.length; i += 1){
      list[listItems[i]] = 1
    };
};

function addItem(list, item, quantity){
  list[item] = quantity
  return (list)
};

function deleteItem(list, item){
  delete list[item]
  return (list)
};

function updateQuantity(list, currentItem, newQuantity){
  for (var item in list){
    if(list[currentItem].hasOwnProperty)
      list[currentItem] = newQuantity
    }
  return (list)
};

function printList(list){
  console.log("-----Shopping List-----")  
  for(var item in list){
      console.log(item + " - " + list[item])
    }
};

// Test Code:
var fruit = "apple orange banana"
console.log(createList(fruit));
console.log(addItem(list, "strawberry", 1));
console.log(deleteItem(list, "apple"));
console.log(updateQuantity(list, "orange", 3));
console.log(printList(list));

// Reflection:
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// This challenge was a great review of how build and pass information between functions in JavaScript. It also helped solidify my knowledge of JavaScript objects and how to create them.

// What was the most difficult part of this challenge?
// So the first time I completed this challenge using Ruby, it was very easy to take user input using the 'gets.chomp' method and send that into the program to populate a shopping list. However, with JavaScript, I couldn't quite figure out how to utilize user input and rely on that throughout the program. I tried using 'prompt()' but that neither worked on my local machine nor on coderpad, and when I attempted to use it in the JavaScript console of Chrome DevTools, it didn't work either. I'm definitely going to do some more research before Phase 1 to see how to take a user's input and use that information in a program.

// Did an array or object make more sense to use and why?
// In my opinion, an object made more sense. A JavaScript object closely resembles a Ruby hash and for that reason, the property-value pairs of an object are quite useful when it comes to populating a list of items and their respective quantities. 