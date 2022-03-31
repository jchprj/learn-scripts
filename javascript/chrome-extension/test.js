console.log("test.js")

// https://stackoverflow.com/questions/260857/changing-website-favicon-dynamically
var link = document.querySelector("link[rel~='icon']");
if (!link) {
    link = document.createElement('link');
    link.rel = 'icon';
    document.getElementsByTagName('head')[0].appendChild(link);
}

// https://stackoverflow.com/questions/16446526/getting-a-content-script-to-append-image-on-page-load
// https://stackoverflow.com/questions/66636403/manifest-v3-resources-must-be-listed-in-the-web-accessible-resources
var url = chrome.runtime.getURL("/images/favicon.ico");
link.href = url;

var node = document.getElementsByName("q")[0]
if(node != undefined) {
    document.title = node.value
}
