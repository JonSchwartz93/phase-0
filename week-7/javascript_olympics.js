 // JavaScript Olympics

// I paired with Alex Forger on this challenge.

// This challenge took me [2.5] hours.

// Bulk Up
// var athlete = [
//   {name: "Maria", sport: "Ladies Tennis"},
//   {name: "Alex", sport: "Mens Soccer"},
//   {name: "Mike", sport: "Mens Boxing"}];

// function add_win(array){
//   for (var i = 0; i < athlete.length; i++){
// athlete[i].win = athlete[i].name + " won " + athlete[i].sport};
// 	console.log(athlete)
// };

// console.log(add_win(athlete));

// // Jumble your words
// function reverse(string){ 
//    return string.split("").reverse().join("")
// };

// console.log(reverse("Jumble your words!"))

// 2,4,6,8
// var b = []

// function evens(array){
//   for (var i = 0; i < array.length; i++){ 
//     if (array[i] % 2 === 0)
//       {b.push(array[i])}};
    
//     return b
// };
    
// console.log(evens([2,7,4,13,15,19,20]))

// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// This challenge helped solidify my knowledge of JavaScript functions, and how to access information in JS data structures (i.e. - iterating over arrays).

// What are constructor functions?
// Constructor functions are a way to create an object in JavaScript (the other way is through literal notation).Constructor functions are preferred if you need to do some initial work before the object is created ("initialize" like in Ruby) or require multiple instances of the object where each instance can be changed during the lifetime of the script. JS constructor objects have their properties and methods defined with the keyword 'this' in front of the property. Properties have their 'values' defined after an '=' (equals) sign. At the end of each property declaration, an optional ";" (semi-colon) can be used to separate each property. When creating a new instance of the object, you need to instantiate the object first with the keyword 'new'.

// How are constructors different from Ruby classes (in your research)?
// Constructors in JavaScript differ from Ruby classes primarily in their syntax. However, they also serve slightly different purposes. Based on my research and my current understanding, it appears that constructor functions are a hybrid of Ruby hashes and classes. If you want to create a new instance of an object in JS, you use name of that object followed by the keyword 'new' similar to how you instantiate a an instance of a class in Ruby.