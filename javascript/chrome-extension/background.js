// https://stackoverflow.com/questions/66406672/chrome-extension-mv3-modularize-service-worker-js-file


// import {foo} from 'modules/action.js';
import './modules/action.js';
import './modules/tabs.js';
import './modules/contextMenus.js';


// each imported module should also use try/catch for their own init
try { init(); } catch (e) { console.error(e); }
function init() {
  // .........
}