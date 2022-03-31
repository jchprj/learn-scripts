console.log("contextMenus.js")
// https://developer.chrome.com/docs/extensions/reference/contextMenus

chrome.runtime.onMessage.addListener(function(msg, sender, sendResponse) {
    console.log("receive: " + msg.request);
    if (msg.request === 'updateContextMenu') {
        var txt = msg.selection;
        createMenus(txt);
    }
    return true;
});

function createMenus(txt) {
    var context = "selection";
    chrome.contextMenus.removeAll();

    chrome.contextMenus.create({"title": "Hello world", "id": "helloworld", "contexts":["all"]});

    if(txt.length > 30) {
        txt = txt.substring(0, 30)
    }
    var parentMenus = [
        {"title": "Hello " + txt, "id": "hello", "contexts":[context]},
    ]
    parentMenus.forEach(menu => {
        chrome.contextMenus.create(menu);
    })

    chrome.contextMenus.onClicked.addListener(onClickMenuItem)
    var subMenus = [
        {"title": "World", "id": "world", "parentId": "hello", "contexts":[context]},
    ]
    subMenus.forEach(menu => {
        chrome.contextMenus.create(menu);
    })
}
  

function onClickMenuItem(info, tabs) {
    console.log( 'context menu clicked' );
    console.log( info );                    // info["menuItemId"]
    console.log( tabs );
    console.log( info.selectionText );
    switch(info.menuItemId) {
        case "world":
            var newURL = "https://www.hello-world.com/"
            chrome.tabs.create({ url: newURL });
            break;
    }
}