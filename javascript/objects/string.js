// How to check whether a string contains a substring in JavaScript?
// From <https://stackoverflow.com/questions/1789945/how-to-check-whether-a-string-contains-a-substring-in-javascript?rq=1> 

const string = "foo";
const substring = "oo";

// ECMAScript 6
console.log(string.includes(substring));

// ECMAScript 5 or older
console.log(string.indexOf(substring) !== -1);