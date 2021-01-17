// https://www.toptal.com/puppeteer/headless-browser-puppeteer-tutorial
// https://stackoverflow.com/questions/46919013/puppeteer-wait-n-seconds-before-continuing-to-the-next-line

const puppeteer = require('puppeteer');

function delay(time) {
    return new Promise(function(resolve) { 
        setTimeout(resolve, time)
    });
}

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://time.is/');

  await page.screenshot({path: 'temp_test_waitForTimeout_1.png'});

  // await delay(5000);
  await page.waitForTimeout(3000);
  
  await page.screenshot({path: 'temp_test_waitForTimeout_2.png'});

  await browser.close();
})();