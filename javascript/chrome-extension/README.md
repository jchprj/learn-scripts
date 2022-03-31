# Chrome extension

Not able to install from crx if not listed in store.

    This extension is not listed in the Chrome Web Store and may have been added without your knowledge.

Ref.

- [Install Chrome extension form outside the Chrome Web Store - Stack Overflow](https://stackoverflow.com/questions/24577024/install-chrome-extension-form-outside-the-chrome-web-store)

## Manifest V3

[Overview of Manifest V3 - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/intro/mv3-overview/)

    Manifest V3 replaces background pages with service workers.


[Migrating to Manifest V3 - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/intro/mv3-migration/)




### [Manifest - Web Accessible Resources](https://developer.chrome.com/docs/extensions/mv3/manifest/web_accessible_resources/)

    "web_accessible_resources": []

### [Host permissions](https://developer.chrome.com/docs/extensions/mv3/intro/mv3-migration/#host-permissions)

    "host_permissions": [
        "http://www.blogger.com/",
        "*://*/*"
    ]




## References

### [chrome.action](https://developer.chrome.com/docs/extensions/reference/action/)

Show a popup

    {
        "name": "Action popup demo",
        "version": "1.0",
        "manifest_version": 3,
        "action": {
            "default_title": "Click to view a popup",
            "default_popup": "popup.html"
        }
    }

Events

onClicked

    Fired when an action icon is clicked. This event will not fire if the action has a popup.

    chrome.action.onClicked.addListener((tab) => {
    });

### [chrome.tabs](https://developer.chrome.com/docs/extensions/reference/tabs/)

Events

    onActivated
    onActiveChanged
    onAttached
    onCreated
    onDetached
    onHighlightChanged
    onHighlighted
    onMoved
    onRemoved
    onReplaced
    onSelectionChanged
    onUpdated
    onZoomChange

