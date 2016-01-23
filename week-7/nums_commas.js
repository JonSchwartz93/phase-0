// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Tim Kelly .

// Pseudocode

/*
Input: Integer as an argument
Output: comma-separated integer as a string
Steps:

Covert to STRING or ARRAY to count the total number of digits in the integer.

Possibly reverse number.  Count every three digits and add a comma afterwards.  
Un-reverse string and RETURN

*/


// Initial Solution
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

// Refactored Solution

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

// Your Own Tests (OPTIONAL)

var testNumber = -5467344444444232;
console.log("The test: " + addCommas(testNumber))

// Reflection