// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Create a basic stock market with one buyer and one seller
// Goals: Buyer purchases a share of stock from Seller, if and only if his price is greater than or equal to the selling price. If the buying price is lower than the selling price, no transaction will occur.
// Characters: Buyer, Seller
// Objects: Buyer(property: name), Seller(property: name)
// Functions: buying_price, selling_price

// Pseudocode:
// Declare a 'Buyer' object that will have a 'name' property
	// Create 'buying_price' function which returns a random buying price between $0-100
	// Within this function add a "stock" property to the 'Buyer' with value 'Apple'
// Declare a 'Seller' object that will have a 'name' property
	// Create 'selling_price' function which returns a random selling price between $0-100
	// Within this function add a "stock" property to the 'Seller' with value 'Apple'
// Check the prices for 'Buyer' and 'Seller'
	// IF 'buying_price' >= 'selling_price'
		// Print "Buy!" to console
	// ELSE
		// Print "Too expensive!" to console

// Initial Code:

// // Create 'Buyer' object:
// var Buyer = {
// 	name: 'Buyer',
// };

// // What is the Buyer willing to pay?
// var randNum = Math.random()*101
// var buyprice = Math.floor(randNum)
// function buying_price(){
// 	Buyer.stock = "Apple"
// 	return Buyer.name + " is willing to pay $" + buyprice + " for a share of " + Buyer.stock + "."		
// };

// // Display Buyer's 'buying_price':
// console.log (buying_price());

// // Create 'Seller' object:
// var Seller = {
//  	name: "Seller",
// };

// // What price is the Seller selling the stock for?
// var randNum = Math.random()*101
// var sellprice = Math.floor(randNum)
// function selling_price(){
// 	Seller.stock = "Apple"
// 	return (Seller.name + " is selling the " + Seller.stock + " stock for $" + sellprice)
// };

// // Display Seller's 'selling_price':
// console.log(selling_price());

// // Compare 'buying_price' and 'selling_price' to determing if stock is a good buy or too expensive.
// if (buyprice >= sellprice)
// 	console.log("Buy!")
// else
// 	console.log("Too expensive!")


// Refactored Solution:
var Buyer = {
	name: 'Buyer',
};

var randNum = Math.random()*101, buyprice = Math.floor(randNum)
function buying_price(){
		Buyer.stock = "Apple"
		return Buyer.name + " is willing to pay $" + buyprice + " for a share of " + Buyer.stock + "."	
};
console.log (buying_price());

//_______________________
var Seller = {
 	name: "Seller",
};

var randNum = Math.random()*101, sellprice = Math.floor(randNum)
function selling_price(){
		Seller.stock = "Apple"
		return (Seller.name + " is selling the " + Seller.stock + " stock for $" + sellprice)
}; 
console.log(selling_price());

//_______________________
if (buyprice >= sellprice)
	console.log("Buy!")
else
	console.log("Too expensive!")


// Reflection:
//What was the most difficult part of this challenge?
// The most difficult part of this challenge was actually getting objects to interact properly with the functions. I'm still figuring out how to this, and definitely hope to be able to create more complex programs than the one I've created above.

// What did you learn about creating objects and functions that interact with one another?
// One thing I learned about creating objects and functions that interact with one another is that it is important to create variable names/function names that make sense in the context of the program otherwise it may get confusing when reading through the code.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I didn't implement any new, built-in methods to use in my refactored solution.   However, I did use two interesting built-in methods in both my initial and refactored solutions.
// Math.random() = returns a random float between 0 and 1.
// Math.floor() = returns the largest integer less than or equal to a given number. In the case of my program, I used the Math.random() method to calculate a float between 0 and 1. I then multiplied that float by 101 (Math.floor() rounds down to the nearest integer, which in this case would be 100). I then used that float as the argument in Math.floor() in order to return a random integer between 0-100.

// How can you access and manipulate properties of objects?
// Access Properties:
// - objectName.property;
// - objectName["property"];
// Manipulate Properties:
	// Add property:
	// - objectName["property"] = value;
	// Delete property:
	// - delete objectName.property;
	// - delete objectName["property"];