// https://nodejs.org/api/console.html

console.assert(true, 'does nothing')
console.log("abc")
console.clear()
console.count('default')
console.count('abc')
console.count('default')
console.count()
console.countReset('abc')
console.count('abc')
console.dir({'abc': 2})
console.error('error #%d', 5)                   // to stderr
console.log('count: %d', 3)
console.table([{ a: 1, b: 'Y' }, { a: 'Z', b: 2 }]);

console.time('100-elements');
for (let i = 0; i < 100; i++) {}
console.timeEnd('100-elements');

console.trace('Show me');                       // to stderr