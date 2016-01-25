// Person 1: Tests to User Stories

// SUM:
// As a user, I want to create a Function called "sum"
// that returns the sum of a group of numbers. The
// sum should be returned in two scenarious: if the
// group has an odd amount of numbers AND an even
// amount of numnbers.


//Pseudocode:
/*
CREATE a function "sum" that takes an array of integers 
as its parameter.
CREATE a variable "total."
ITERATE through the array, adding each element together,
and set this amount equal to "total."
IF the length of the array divided by two equals 0, return
"There is an even amount of numbers. Their sum is "total"."
ELSE return "There is an odd amount of numbers. Their sum 
is "total"."
*/

//Initial Solution:

function sum(intArray) {
	var total = 0 ;
	intArray.forEach(function(element) {
		total += element;
	});
	if (intArray.length % 2 === 0) {
		console.log("There is an even amount of numbers. Their sum is " + total);
	} else {
		console.log("There is an odd amount of numbers. Their sum is " + total);
	}
};

//driver
sum([1,2,3,4,5,6,7]);
sum([1,2,3,4,5,6,7,8]);



// Person 4: 
	// As a user I want to give a collection of numbers 
	// and recieve their total. I also want to know if I 
	// gave them and odd or even amount of numbers.


// MEAN:
// As a user, I want to create a Function called "mean"
// that returns the mean of a group of numbers. The
// mean should be returned in two scenarios: when the
// group has an odd amount of numbers AND an even
// amount of numnbers.

//Pseudocode:
/*
CREATE a function "mean" that takes an array of integers as 
its parameter.
CREATE a variable "n" and set it equal to the length of 
the array.
CREATE a variable "total."
ITERATE through the array, adding each element together,
and set this amount equal to "total."
CREATE a variable "average" and set it equal to "total/n."
IF n divided by two equals 0, return "There is an even amount
of numbers. Their mean is "average"."
ELSE return "There is an odd amount of numbers. Their mean
is "average"."
*/



//Initial Solution:

function mean(intArray) {
	var n = intArray.length;
	var total = 0;
	intArray.forEach(function(element) {
		total += element;
	});
	var average = total / n;
	if (intArray.length % 2 === 0) {
		console.log("There is an even amount of numbers. Their mean is " + average);
	} else {
		console.log("There is an odd amount of numbers. Their mean is " + average);
	}
}

// Person 4:
	// I want to give a group of numbers and recieve the 
	// mean. I also want to know if I gave an odd or even 
	// amount of integers.

//driver
mean([1,2,3,4,5,6,7]);
mean([1,2,3,4,5,6,7,8]);

// MEDIAN:
// As a user, I want to create a Function called "median"
// that returns the median of a group of numbers. The
// median should be returned in two scenarios: when the
// group has an odd amount of numbers AND an even
// amount of numnbers.



//Pseudocode:
/*
CREATE a function "med" that takes an array of integers as 
its parameter.
SORT the array.
CREATE a variable "length" that equals the length of the 
array.
CREATE a variable "halfLength" that equals length/2.
CREATE a variable "median."
IF length % 2 = 0,
  "median" = (array[halfLength] + array[halfLength - 1])/2
  RETURN "There is an even amount of numbers. Their sum is "median.""
ELSE
  "median" = array[halfLength.floor]
  RETURN "There is an odd amount of numbers. Their median 
  is "median.""
*/



//Initial Solution:

function med(intArray) {
	intArray = intArray.sort();
	var length = intArray.length;
	var halfLength = length / 2;
	var median = 0;
	if (intArray.length % 2 === 0) {
		median = (intArray[halfLength] + intArray[halfLength - 1])/2;
		console.log("There is an even amount of numbers. Their median is " + median);
	} else {
		median = intArray[Math.floor(halfLength)];
		console.log("There is an odd amount of numbers. Their median is " + median);
	}

}

// Person 4: As a user, I want to give a group of integers 
	// and recieve the median. I also want to know what if 
	// the amount of numbers I gave was even or odd.

//driver
med([1,2,3,4,5,6,7]);
med([1,2,3,4,5,6,7,8]);


// Person 1: Summary of Tests (which ones passed/failed):


// Reflection: