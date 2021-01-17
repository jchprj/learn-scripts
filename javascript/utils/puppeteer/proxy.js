// https://blog.scrapinghub.com/how-to-use-a-proxy-in-puppeteer

const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({args: [ '--proxy-server=http://localhost:1080' ]});
  const page = await browser.newPage();
  await page.goto('https://example.com');
  await page.screenshot({path: 'temp_test.png'});

  await browser.close();
})();