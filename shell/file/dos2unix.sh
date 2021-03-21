# https://www.cyberciti.biz/faq/howto-unix-linux-convert-dos-newlines-cr-lf-unix-text-format/



dos2unix -n file1 temp_test

unix2dos -n temp_test temp_test.2



# https://cikkim.wordpress.com/2016/11/16/batch-change-crlf-linefeed-to-lf/
# For all files
# find . -type f -print0 | xargs -0 dos2unix