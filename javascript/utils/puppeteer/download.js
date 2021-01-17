// https://stackoverflow.com/questions/49245080/how-to-download-file-with-puppeteer-using-headless-true

const puppeteer = require('puppeteer');

var download_path = __dirname;
console.log(download_path);

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page._client.send('Page.setDownloadBehavior', {
    behavior: 'allow',
    downloadPath: download_path,
  });
  await page.goto('https://file-examples.com/index.php/sample-documents-download/sample-ods-download/');

  await page.click('a[download="file_example_ODS_10.ods"]');

  await page.screenshot({path: 'temp_test.png'});
  
  await page.waitForTimeout(5000);
  await browser.close();

  var fs = require('fs');  
  fs.rename('file_example_ODS_10.ods', 'temp_test.ods', function(err) {
    if ( err ) console.log('ERROR: ' + err);
  });
})();