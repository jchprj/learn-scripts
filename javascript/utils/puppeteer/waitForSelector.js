// https://stackoverflow.com/questions/46135853/puppeteer-how-to-wait-until-an-element-is-visible

const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://time.is/');

  await page.screenshot({path: 'temp_test_waitForSelector_1.png'});

  await page.waitForSelector('time', {visible: true});
  
  await page.screenshot({path: 'temp_test_waitForSelector_2.png'});

  await browser.close();
})();