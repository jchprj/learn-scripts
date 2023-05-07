console.log("tabs.js")
// https://developer.chrome.com/docs/extensions/reference/tabs

chrome.tabs.onUpdated.addListener(function(tabId,changeInfo,tab){
    chrome.scripting.executeScript({
      target: {tabId: tab.id},
      files: ['src/test.js']
    });
});

// https://developer.chrome.com/docs/extensions/mv3/promises/
let tabsPromise = getTabs()
tabsPromise.then((tabs) => {
    console.log(tabs)
    tabs.map(tab => {
        console.log(tab)
    })
})

let currentTabPromise = getCurrentTab()
currentTabPromise.then((tab) => {
    console.log("currentTab:")
    console.log(tab)
})


// https://developer.chrome.com/docs/extensions/reference/tabs/
async function getCurrentTab() {
    let queryOptions = { active: true, currentWindow: true };
    let [tab] = await chrome.tabs.query(queryOptions);
    return tab;
}
async function getTabs() {
    let queryOptions = { currentWindow: true };
    let tabs = await chrome.tabs.query(queryOptions);
    return tabs;
}