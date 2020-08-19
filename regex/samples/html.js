//How to replace plain URLs with links?
//From <https://stackoverflow.com/questions/37684/how-to-replace-plain-urls-with-links> 


// <a[^>]+href=\"(.*?)\"[^>]*>(.*)?</a>
/<a[^>]+href=\"(.*?)\"[^>]*>(.*)?<\/a>/


//<a[^>]+href=\"thunder(.*?)\"[^>]*>(.*)?</a>
/<a[^>]+href=\"thunder(.*?)\"[^>]*>(.*)?<\/a>/


//(<a href=\"([\S]+)\" target=\"_blank\">abc[\S]+<\/a>|<a href=\"(thunder:[\S]+)\")
/(<a href=\"([\S]+)\" target=\"_blank\">abc[\S]+<\/a>|<a href=\"(thunder:[\S]+)\")/


/.+?\:\/\/.+?(\/.+?)(?:#|$)/



// From <https://stackoverflow.com/questions/6609903/using-javascript-and-regular-expression-to-get-content-inside-the-html-body> 
var bodytext = '';
var m = text.match(/<body[^>]*>([^<]*(?:(?!<\/?body)<[^<]*)*)<\/body\s*>/i);
if (m) bodytext = m[1];
