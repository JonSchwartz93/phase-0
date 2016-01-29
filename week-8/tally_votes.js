// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Chris Bunkers.
// This challenge took me [4] hours.

// These are the votes cast by each student. Do not alter these objects here.
  
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Pseudocode - "voteCount":
//Test 1: Tally Votes - President
// Each time that someone votes for "Bob" add 1 to his vote tally in the president property of the "voteCount" object.

//Test 2: Tally Votes - Vice President
// Each time that someone votes for "Bob" add 1 to his vote tally in the vice president property of the "voteCount" object.

//Test 3: Tally Votes - Secretary
// Each time that someone votes for "Bob" add 1 to his vote tally in the secretary property of the "voteCount" object.

//Test 4: Tally Votes - Treasurer
// Each time that someone votes for "Bob" add 1 to his vote tally in the treasurer property of the "voteCount" object.

// __________________________________________
// Initial Solution - "voteCount":

// Tally the votes in voteCount.
// var voteCount = {
//   president:{}, 
//   vicePresident:{},
//   secretary:{}, 
//   treasurer:{} 
// };

// for (var voter in votes) {
//   if (voteCount["president"].hasOwnProperty(votes[voter]["president"])) {
//     voteCount["president"][votes[voter]["president"]] += 1;
//   }
//   else {
//     voteCount["president"][votes[voter]["president"]] = 1;
//      };
//   };

// for (var voter in votes) {
//   if (voteCount["vicePresident"].hasOwnProperty(votes[voter]["vicePresident"])) {
//     voteCount["vicePresident"][votes[voter]["vicePresident"]] += 1;
//      }
//   else {
//       voteCount["vicePresident"][votes[voter]["vicePresident"]] = 1;
//      };
//   };

// for (var voter in votes) {
//   if (voteCount["secretary"].hasOwnProperty(votes[voter]["secretary"])) {
//     voteCount["secretary"][votes[voter]["secretary"]] += 1;
//   }
//   else {
//     voteCount["secretary"][votes[voter]["secretary"]] = 1;
//      };
// };

// for (var voter in votes) {
//   if (voteCount["treasurer"].hasOwnProperty(votes[voter]["treasurer"])) {
//     voteCount["treasurer"][votes[voter]["treasurer"]] += 1;
//   }
//   else {
//      voteCount["treasurer"][votes[voter]["treasurer"]] = 1;
//   };
// };
// console.log(voteCount);

/* The name of each student receiving a vote for an office should become a property of the respective office in voteCount. After Alex's votes have been tallied, voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/

//Pseudocode - "officers":
//Test 5: Determine who is President
// Check who received the most votes for the position of president. Should return "Louise." Push Louise to the "president" property of the "officers" object.

//Test 6: Determine who is Vice President
// Check who received the most votes for the position of vice president. Should return "Hermann." Push Hermann to the "vice president" property of the "officers" object.

//Test 7: Determine who is Secretary
// Check who received the most votes for the position of secretary. Should return "Fred." Push Fred to the "secretary" property of the "officers" object.

//Test 8: Determine who is Treasurer
// Check who received the most votes for the position of treasurer. Should return "Ivy." Push Ivy to the "Treasurer" property of the "officers" object.

// __________________________________________
// Initial Solution - "officers":

//_____________________________________
/* Once the votes have been tallied, assign each officer position the name of the student who received the most votes. */

// var officers = {
//   president: undefined,
//   vicePresident: undefined,
//   secretary: undefined,
//   treasurer: undefined
// }

// for (var position in voteCount) {
//  var mostVotes = 0;
//   for (var name in voteCount[position])
//     if (voteCount[position][name] > mostVotes) {
//       mostVotes = voteCount[position][name];
//       officers[position] = name;
//     }  
// };

// console.log(officers);

// __________________________________________
// Refactored Solution:
var voteCount = {
  president:{}, 
  vicePresident:{},
  secretary:{}, 
  treasurer:{} 
};
    
for (var voter in votes) {
  for (var position in votes[voter]) {
    if (!voteCount[position].hasOwnProperty(votes[voter][position])) {
      voteCount[position][votes[voter][position]] = 1; 
    }
    else {
      voteCount[position][votes[voter][position]] += 1; 
    }
  }
};
console.log(voteCount);
  
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}
  
for (var position in voteCount) {
  var mostVotes = 0;
  for (var name in voteCount[position])
    if (voteCount[position][name] > mostVotes) {
      mostVotes = voteCount[position][name];
      officers[position] = name;
    }
};
console.log(officers);

//Reflection:
// What did you learn about iterating over nested objects in JavaScript?
// For one, I learned that iterating over nested objects is tough! But on a more serious note, one important thing I learned is that proper indentation within nested objects is extremely helpful in my understanding how to iterate over those nested objects. The reason for this is that indentations provide a clear distinction between each layer of nested objects/properties.

// Were you able to find useful methods to help you with this?
// My pair and I used the ".hasOwnProperty()" method. This useful method determines whether an object has a property with a specified name. In the case of this challenge, we used this method to iterate over the "votes" obejct to see if the "position" properties ("president," "vicePresident," "secretary," and "treasurer") from the "voteCount" object exist.

// What concepts were solidified in the process of working through this challenge?
// I definitely improved my understanding of how to access information within nested objects. However, one concept that I'm still a bit uncertain about is how to iterate in JS. For some reason, it isn't sticking with me as well as iterating in Ruby, so I definitely need to read up a bit more on this topic.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)