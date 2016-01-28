/*
Gradebook from Names and Scores
I worked on this challenge with Tyler Doerschuk.
This challenge took me [2.5] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.
var gradebook = {
  Joseph: {testScores: scores[0]},
  Susan: {testScores: scores[1]},
  William: {testScores: scores[2]},
  Elizabeth: {testScores: scores[3]},
  addScore:
    function (name, newscore) {
    gradebook[name].testScores.push(newscore)
  },
  getAverage:
    function(name) {
      var x = average(gradebook[name].testScores);
        return x;
    },
};

var average = function(array) {
      var sum = 0; for (var i in array) {sum += array[i];};
      return (sum / (array.length))
};
// __________________________________________
// Refactored Solution
// It turns out that our initial solution was as refactored as we could get it, without getting ourselves into a "rabbit-hole." That being said, it works well and is very readable

// __________________________________________
// Reflection:
// What did you learn about adding functions to objects?
// I thought it was really interesting how we created a function "average" outside of the "gradebook" object, and then called this function inside of the "gradebook" object. This assignment definitely helped strengthen my knowledge of variable scope in JavaScript, as well as how to access functions both inside and outside of an object.

// How did you iterate over nested arrays in JavaScript?
// My pair and I iterated over nested arrays in JavaScript using a "for" loop in the creation of our "average" method. In order to sum each student's 4 testscores, we intially created a variable "sum" and set it equal to 0. Then, in the "for" loop, we created a variable "i in array", which is similar to an ".each" method in Ruby, and represents each index in the array. Then, the loop adds each testscore, to the following testscore, and continues this process until its added up all of the testscores.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// We didn't end up incorporating any new methods. ".push" and ".length," two of the methods I have already seen and used in my code were used.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)