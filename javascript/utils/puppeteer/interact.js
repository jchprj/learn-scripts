// https://stackoverflow.com/questions/47966510/how-to-fill-an-input-field-using-puppeteer
// https://pptr.dev/

const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://ifconfig.co/');
  await page.waitForSelector('input[id=ipInput]');
  await page.focus('input[id=ipInput]');
  await page.screenshot({path: 'temp_test_interact_1.png', fullPage: true});
  await page.keyboard.type('test input')
  await page.screenshot({path: 'temp_test_interact_2.png', fullPage: true});
  await page.click('button[name=country]'); //Click country button
  await page.screenshot({path: 'temp_test_interact_3.png', fullPage: true});
  await page.mouse.move(720, 70)            //Mouse over top right
  await page.screenshot({path: 'temp_test_interact_4.png', fullPage: true});
  await page.mouse.click(660, 430)          //Click city button
  await page.screenshot({path: 'temp_test_interact_5.png', fullPage: true});
  await browser.close();
})();