console.log("content.js");

chrome.runtime.connect();
console.log("DOM READY!");
document.addEventListener('selectionchange', function() {
	var selection = window.getSelection().toString().trim();
	console.log("send:" + selection);
	chrome.runtime.sendMessage({
		request: 'updateContextMenu',
		selection: selection
	});
});
