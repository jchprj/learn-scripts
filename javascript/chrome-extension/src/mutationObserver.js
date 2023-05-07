// https://stackoverflow.com/questions/68329405/javascript-wait-until-element-loaded-on-website-using-chrome-extension
// https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver

function handleSomeDiv(someDiv) { 
    console.log("div was handled");
}

const observer = new MutationObserver(function (mutations, mutationInstance) {
    const someDiv = document.getElementById('some-div');
    if (someDiv) {
        handleSomeDiv(someDiv);
        mutationInstance.disconnect();
    }
});


observer.observe(document, {
    childList: true,
    subtree:   true
});