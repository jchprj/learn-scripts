// How to check whether a string contains a substring in JavaScript?
// From <https://stackoverflow.com/questions/1789945/how-to-check-whether-a-string-contains-a-substring-in-javascript?rq=1> 

var string = "foo"
var substring = "oo"

// ECMAScript 6
console.log(string.includes(substring))

// ECMAScript 5 or older
console.log(string.indexOf(substring) !== -1)


// https://stackoverflow.com/questions/62825358/javascript-replaceall-is-not-a-function-type-error
string = ":insertx: :insertx: :inserty: :inserty: :insertz: :insertz:"
//newstring = string.replaceAll(":insertx:", 'hello!');           // TypeError: string.replaceAll is not a function
var newstring = string.replace(/:insertx:/g, 'hello!')
console.log(newstring)