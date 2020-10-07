// JavaScript: Arrow Functions for Beginners
// From <https://codeburst.io/javascript-arrow-functions-for-beginners-926947fc0cdc>


() => { statements }
(parameters) => { statements }
parameters => { statements }
parameters => expression


var one = () => 1
console.log(one())

var two = (num) => { return num * 2 }
console.log(two(1))

var three = num => { return num * 2 }
console.log(three(1))

var four = num => num * 2
console.log(four(1))
