// https://github.com/puppeteer/puppeteer
// https://stackoverflow.com/questions/47616985/node-puppeteer-take-screenshot-full-page-spa

const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://example.com');
  await page.screenshot({path: 'temp_test.png', fullPage: true});
  await page.pdf({path: 'temp_test.pdf', format: 'A4'});

  await browser.close();
})();