// https://nodejs.org/en/knowledge/getting-started/how-to-use-util-inspect/
// https://stackoverflow.com/questions/41669039/dumping-whole-array-console-log-and-console-dir-output-num-more-items
// https://nodejs.org/api/util.html#util_util_inspect_defaultoptions
var util = require('util')

var out
out = util.inspect(console)
console.log(out)

var http = require('http')
out = util.inspect(http, true, 1)
console.log(out)
out = util.inspect(http, true, 3)
console.log(out)

var object = {"a":{"a":{"a":{"a":"a"}}}}
out = util.inspect(object, showHidden=false, depth=2, colorize=true)
console.log(out)

out = util.inspect(object, showHidden=false, depth=3, colorize=true)
console.log(out)

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
out = util.inspect(array, { maxArrayLength: null })
console.log(out)
util.inspect.defaultOptions.maxArrayLength = 3
out = util.inspect(array)
console.log(out)
