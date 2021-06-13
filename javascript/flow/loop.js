// https://www.w3schools.com/js/js_loop_forof.asp

let cars = ["BMW", "Volvo", "Mini"];
let text = "";

for (let x of cars) {
  text += x + "\n";
}
console.log(text);

let language = "JavaScript";
text = "";

for (let x of language) {
    text += x + "\n";
}
console.log(text);

// https://www.w3schools.com/js/js_loop_forin.asp
var person = {fname:"John", lname:"Doe", age:25};

text = "";
var x;
for (x in person) {
  text += person[x] + "\n";
} 
console.log(text);

var numbers = [45, 4, 9, 16, 25];

var txt = "";
var x;
for (x in numbers) {
  txt += numbers[x] + "\n";
}
console.log(txt);