// Manipulating JavaScript Objects

// I worked on this challenge: by myself.

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.
var adam = {
  name: "Adam"
};

adam.spouse = terah;
//adam.children = terah.children;

terah.weight = 125;
terah.spouse = adam;
terah.children = {
      carson: {
        name: "Carson"},
      carter: {
        name: "Carter"},
      colton: {
        name: "Colton"}
      };

delete terah.eyeColor
adam.children = terah.children;

// __________________________________________
// Reflection:
// What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// I had trouble passing test #s 6 (adding a spouse property to adam and assign it to the value of terah) and 14 (add a children property to adam and assign it the value of terah.chidlren). My intial apporach for this problem was to create an entirely new "terah" object, which I eventually realized defeats the purpose of this assignment. That being said, my new approach ended up working because I was using the dot notation (as opposed to the literal notation), which makes it easy to add/remove properties to an object.

// How difficult was it to add and delete properties outside of the object itself?
// Once I figured out how to properly use the dot notation as well as the "delete" operator, adding and deleting properties outside of the object itself became very easy.

// What did you learn about manipulating objects in this challenge?
// I learned how to create an object within an object, as well as how to add/delete properties from an object. I also learned how to reference one object within another object (i.e. - referencing 'terah' inside 'adam'.)
// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)