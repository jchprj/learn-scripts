// https://stackoverflow.com/questions/42502809/regex-to-match-second-line

var re = /(?:\r\n?|\n){2}(.+)/g
var txt = `www.a.com:80
www.ab.com:80,443
www.abc.com:443`
s = txt.match(re)
console.log(s)
