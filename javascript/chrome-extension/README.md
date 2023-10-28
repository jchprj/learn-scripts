# Chrome extension

Not able to install from crx if not listed in store.

    This extension is not listed in the Chrome Web Store and may have been added without your knowledge.

Ref.

- [Install Chrome extension form outside the Chrome Web Store - Stack Overflow](https://stackoverflow.com/questions/24577024/install-chrome-extension-form-outside-the-chrome-web-store)



[Chrome Extensions content scripts - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/content_scripts/)

    Content scripts are files that run in the context of web pages. By using the standard Document Object Model (DOM), they are able to read details of the web pages the browser visits, make changes to them and pass information to their parent extension.


[chrome.contextMenus - Chrome Developers](https://developer.chrome.com/docs/extensions/reference/contextMenus/)


## Chrome Apps

[Create Your First Chrome App [Deprecated] - Chrome Developers](https://developer.chrome.com/docs/apps/first_app/)

    Chrome will be removing support for Chrome Apps on all platforms. Chrome browser and the Chrome Web Store will continue to support extensions.


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



## Instalation

[Install a chrome extension for multiple users](https://groups.google.com/a/chromium.org/g/chromium-extensions/c/Gb60IIdjkMM)

[Alternative Chrome extension installation methods - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/external_extensions/#registry)

	Using the Windows registry
	1. Find or create the following key in the registry:
	• 32-bit Windows: HKEY_LOCAL_MACHINE\Software\Google\Chrome\Extensions
	• 64-bit Windows: HKEY_LOCAL_MACHINE\Software\Wow6432Node\Google\Chrome\Extensions
	2. Create a new key (folder) under the Extensions key with the same name as the ID of your extension (for example, aaaaaaaaaabbbbbbbbbbcccccccccc).
	3. In your extension key, create a property, "update_url", and set it to the value: "https://clients2.google.com/service/update2/crx" (this points to your extension's crx in the Chrome Web Store):
    {
    "update_url": "https://clients2.google.com/service/update2/crx"
    }
	4. Launch the browser and go to chrome://extensions; you should see the extension listed.

[Where does Chrome store extensions? - Stack Overflow](https://stackoverflow.com/questions/14543896/where-does-chrome-store-extensions)

    Windows: %userprofile%\AppData\Local\Google\Chrome\User Data\Default\Extensions
    Linux: ~/.config/google-chrome/Default/Extensions/
    MacOS: ~/Library/Application\ Support/Google/Chrome/Default/Extensions

[In the Chrome browser, how can I copy extensions from one user profile to another? - Quora](https://www.quora.com/In-the-Chrome-browser-how-can-I-copy-extensions-from-one-user-profile-to-another)

    /Library/Application Support/Google/Chrome/Profile 1/ (Mac)
    %systemdrive%%homepath%\AppData\Local\Google\Chrome\User Data\Profile 1\ (Windows)