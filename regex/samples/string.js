
// Find string start from last splash
/\/((?!\/).)*$/gm


// ^abc$	start / end of the string
// (?!abc)	negative lookahead


// https://stackoverflow.com/questions/24636814/regular-expression-only-match-if-string-ends-with-target
/8/g        // All 8

/8$/m       // Only last 8 in one line

/8$/        // Nothing





// https://javascript.info/regexp-anchors
let goodInput = "12:34";
let badInput = "12:345";
let regexp = /^\d\d:\d\d$/;
console.log( regexp.test(goodInput) ); // true
console.log( regexp.test(badInput) ); // false