// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
//var ten = 10;
//	console.log(ten);

//prompt("What is your favorite food", "");
//console.log("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle:
/*
for(var triangle = "#"; triangle.length <=7; triangle += "#")
	console.log(triangle);
*/
//FizzBuzz
/*
for(var number = 0; number <= 100; number += 1)
	if (number % 3 == 0 && number % 5 != 0)
		console.log("Fizz")
	else if (number % 5 == 0 && number % 3 != 0)
		console.log("Buzz")
	else if (number % 5 == 0 && number % 3 == 0)
		console.log("FizzBuzz")
	else
		console.log (number);
*/

// Functions
// Complete the `minimum` exercise.
/*
function min(num1, num2) {
	if (num1 < num2)
		console.log(num1);
	else
		console.log(num2);
}

min(-23, -18);
*/

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Jon",
	age: 22,
	favorite_foods: ["sushi", "hamburgers", "chocolate"],
	quirk: "Avid Jeopardy-watcher"
};

console.log(me.name);
console.log(me.age);
console.log(me.favorite_foods);
console.log(me.quirk);