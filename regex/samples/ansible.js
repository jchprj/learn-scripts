
// Used in Ansible loops
var re = /(.*):(.*)/g
var txt = `www.a.com:80
www.ab.com:80,443
www.abc.com:443`
var replace = "- { host: '$1', port: [$2] }"
s = txt.replace(re, replace)
console.log(s)
