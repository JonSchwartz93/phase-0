// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Tim Kelly.

// Pseudocode:
/*
Input: Integer as an argument
Output: comma-separated integer as a string
Steps:
	Covert to STRING or ARRAY to count the total number of digits in the integer.

	Possibly reverse number.  Count every three digits and add a comma afterwards.  
	Un-reverse string and RETURN
*/

// Initial Solution:
/*
function addCommas(ourNumber){
  //convert ourNumber from integer to string to array
  var stringNum = ourNumber.toString();
  var numArray = stringNum.split("");
  var reversedArray = [];
  // iterate over ourNumber unshift into reversedArray
  for(var i = 0; i < numArray.length; i++){
    reversedArray.unshift(numArray[i]);
  }
// for (var i = 0; i < reversedArray.length; i++)
  
  var unreversedArray = [];
  var counter = 0;
  
  for (var i = 0; i < reversedArray.length; i++){
    if (counter === 3) {
      unreversedArray.unshift(",");
      counter = 0;
      unreversedArray.unshift(reversedArray[i]);
      counter++;
    } else {
      unreversedArray.unshift(reversedArray[i]);
      counter++;
    }
  }
  return unreversedArray.join("");
}
*/

// Refactored Solution:

function addCommas(ourNumber){
  var stringNum = ourNumber.toString(), 
      numArray = stringNum.split(""),
      reversedArray = []; 
   
  for(var i = 0; i < numArray.length; i++){
    reversedArray.unshift(numArray[i]);
  }
  
  var unreversedArray = [], counter = 0;
    
  for (var i = 0; i < reversedArray.length; i++){
    if (counter === 3) {
      unreversedArray.unshift(",");
      counter = 0;
      unreversedArray.unshift(reversedArray[i]);
      counter++;
    } else {
      unreversedArray.unshift(reversedArray[i]);
      counter++;
    }
  }
  return unreversedArray.join("");
}

// Your Own Tests (OPTIONAL):

var testNumber = -5467344444444232;
console.log("The test: " + addCommas(testNumber))

// Reflection:
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// It was very interesting approaching this problem from the perspective of JavaScript. I'm definitely still getting used to the new syntax, but thinking through the actual problem is actually quite similar. Essentially what my pair and I did was pseudocode on a high-level to create a blueprint/map of our thought-process, and then dive into the code.

// What did you learn about iterating over arrays in JavaScript?
// Again, I'm definitely still getting used to the differences in syntax between JS and Ruby, but iterating over arrays using loops and counters is, in my opinion, more difficult. This is probably due to the fact that I'm still in the early stages of my understanding of JS, so I'm interested to see if there are easier, more direct ways (like the methods in Ruby) to iterate over an array.

// What was different about solving this problem in JavaScript?
// The syntax of iteration is slightly different in JavaScript which therefore caused my pair and I to take a varied approach from what we had taken when we solved this same problem in Ruby.

// What built-in methods did you find to incorporate in your refactored solution?
// - toString()
// - .split
// - .length
// - .unshift
// - .join