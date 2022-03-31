console.log("action.js")
// https://developer.chrome.com/docs/extensions/reference/action

chrome.action.onClicked.addListener(tab => {
    chrome.scripting.executeScript({
      target: {tabId: tab.id},
      files: ['test.js']
    });
});
