// https://www.npmjs.com/package/debug
// npm install debug


// Set DEBUG environment variable = http
var debug = require('debug')('http')
  , http = require('http')
  , name = 'My App';

// fake app

debug('booting %o', name);
