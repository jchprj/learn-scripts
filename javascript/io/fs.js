// https://nodejs.org/api/fs.html#file-system
// The fs module enables interacting with the file system in a way modeled on standard POSIX functions.

// https://stackoverflow.com/questions/58211880/uncaught-syntaxerror-cannot-use-import-statement-outside-a-module-when-import

fs = require('fs');

async function unlink() {
  try {
    await fs.unlink('/tmp/hello1');
    console.log('successfully deleted /tmp/hello1');
  } catch (error) {
    console.error('there was an error when unlink /tmp/hello1:', error.message);
  }
}
unlink();

fs.unlink('/tmp/hello2', (err) => {
  if (err) throw err;
  console.log('successfully deleted /tmp/hello2');
});

try {
  fs.unlinkSync('/tmp/hello3');
  console.log('successfully deleted /tmp/hello3');
} catch (err) {
  console.log(err);
}