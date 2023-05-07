// Simplify your JavaScript – Use .map(), .reduce(), and .filter()
// From <https://medium.com/poka-techblog/simplify-your-javascript-use-map-reduce-and-filter-bd02c593cc2d> 

// Simplify your JavaScript – Use .some() and .find()
// From <https://medium.com/poka-techblog/simplify-your-javascript-use-some-and-find-f9fb9826ddfd> 
var officers = [
    { id: 20, name: 'Captain Piett' },
    { id: 24, name: 'General Veers' },
    { id: 56, name: 'Admiral Ozzel' },
    { id: 88, name: 'Commander Jerjerrod' }
];
var pilots = [
    {
      id: 10,
      name: "Poe Dameron",
      years: 14,
    },
    {
      id: 2,
      name: "Temmin 'Snap' Wexley",
      years: 30,
    },
    {
      id: 41,
      name: "Tallissan Lintra",
      years: 16,
    },
    {
      id: 99,
      name: "Ello Asty",
      years: 22,
    }
];
var operatives = [
    { id: 12, name: 'Baze Malbus', pilot: false },
    { id: 44, name: 'Bodhi Rook', pilot: true },
    { id: 59, name: 'Chirrut Îmwe', pilot: false },
    { id: 122, name: 'Jyn Erso', pilot: false }
];
const officersIds = officers.map(officer => officer.id);
console.log(officersIds)
const totalYears = pilots.reduce((acc, pilot) => acc + pilot.years, 0);
console.log(totalYears)
const pilots99 = pilots.filter(pilot => pilot.id === 99);
console.log(pilots99)

const listHasPilots = operatives.some(operative => operative.pilot);
console.log(listHasPilots)
const listHasPilots2 = operatives.every(operative => operative.pilot);
console.log(listHasPilots2)
const firstPilot = operatives.find(operative => operative.pilot);
console.log(firstPilot)

// forEach
operatives.forEach(element => console.log(element));


// flatMap
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap
let arr1 = [1, 2, 3, 4];

arr1.map(x => [x * 2]); 
// [[2], [4], [6], [8]]

arr1.flatMap(x => [x * 2]);
// [2, 4, 6, 8]

// only one level is flattened
arr1.flatMap(x => [[x * 2]]);
// [[2], [4], [6], [8]]


// https://www.w3schools.com/jsref/jsref_concat_array.asp
// This method does not change the existing arrays, but returns a new array, containing the values of the joined arrays.
var hege = ["Cecilie", "Lone"];
var stale = ["Emil", "Tobias", "Linus"];
var kai = ["Robin"];
var children = hege.concat(stale, kai); 


// https://www.codegrepper.com/code-examples/javascript/javascript+create+list+of+numbers+1+to+n
var arr = Array.from(Array(10).keys())
console.log(arr)