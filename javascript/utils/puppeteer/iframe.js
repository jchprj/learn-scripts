// https://stackoverflow.com/questions/55578055/puppeteer-find-iframe-by-class

const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://ifconfig.co/');
  await page.screenshot({path: 'temp_test_iframe_1.png', fullPage: true});
  await page.waitForSelector('iframe');
  const elementHandle = await page.$('iframe');
  const frame = await elementHandle.contentFrame();
  console.log(frame);
  //await frame.waitForSelector(......);
  await page.screenshot({path: 'temp_test_iframe_2.png', fullPage: true});

  await browser.close();
})();