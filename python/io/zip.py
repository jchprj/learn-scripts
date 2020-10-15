# https://stackoverflow.com/questions/42214376/zip-single-file

import zipfile

myfilepath = 'temp_test'
myzippath = 'temp_test.zip'

zipfile.ZipFile(myzippath, 'w').write(myfilepath) 