# https://stackoverflow.com/questions/67938055/how-to-print-the-file-slowly
echo 12345 | perl -ne '$|=1; for (split //) { print; select(undef,undef,undef, 0.15) }' 