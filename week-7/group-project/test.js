// Add the finished solution here when you receive it.

// SUM:
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
// test 1 - passed 
// test 2 - failed
// test 3 - failed

// MEAN: 
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
};
// test 4 - passed 
// test 5 - failed
// test 6 - failed

// MEDIAN: 
function median(intArray) {
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
};
// test 7 - passed 
// test 8 - failed
// test 9 - failed

//__________________________________________
// Tests:  Do not alter code below this line.

oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)