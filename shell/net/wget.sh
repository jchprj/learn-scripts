# https://stackoverflow.com/questions/4944295/skip-download-if-files-exist-in-wget
# -nc, --no-clobber: skip downloads that would download to existing files.



# https://redfern.me/skipping-certificate-checks-with-wget/
# --no-check-certificate



# https://electrictoolbox.com/wget-save-different-filename/
wget -O temp_test https://example.com




# https://cheapwindowsvps.com/blog/how-to-install-wget-on-centos-7/?__cf_chl_jschl_tk__=dea17cd171b2f67ea754f86baa3be53a7144d4dc-1600927345-0-AU1WNROvkh788DHviKeWW3Ix59S4HfzEUV0qEQdRtb_Kd1YeylgeuHP0LKAecYZcJs3Q0eZ91DVOka8I-srjcb--_8snCF8qQB9WfhZT6j1AV3SmMxNIlXWXN-QQRF4ceHY_ZZAjNBUH4BrZWgg6XTUhsLic6fICHBtH72tDUL1o6iwobQo_quYJJCKZcuOnQIcUGfj8wgpHTL1Phklssrxn17ckmaDifbVKUQHY2aRSA9x6hHa-9aqe3UH2Ss4550HKohO8CQAsinGW6qQOb6eQecrf8cr4GNfyYgol1egZMzlHJGVAAAB9WohbsPMEomnq94H-gkKERtVpbEcxrrJfTSX9D7l58C1j6-l27MERA05uMgSlPjR3JxCY0ZyJMg
# Downloading An Entire Website Using wget
mkdir temp_test.dir
pushd temp_test.dir
wget -nH -r http://example.com
popd



# https://cheapwindowsvps.com/blog/how-to-install-wget-on-centos-7/?__cf_chl_jschl_tk__=dea17cd171b2f67ea754f86baa3be53a7144d4dc-1600927345-0-AU1WNROvkh788DHviKeWW3Ix59S4HfzEUV0qEQdRtb_Kd1YeylgeuHP0LKAecYZcJs3Q0eZ91DVOka8I-srjcb--_8snCF8qQB9WfhZT6j1AV3SmMxNIlXWXN-QQRF4ceHY_ZZAjNBUH4BrZWgg6XTUhsLic6fICHBtH72tDUL1o6iwobQo_quYJJCKZcuOnQIcUGfj8wgpHTL1Phklssrxn17ckmaDifbVKUQHY2aRSA9x6hHa-9aqe3UH2Ss4550HKohO8CQAsinGW6qQOb6eQecrf8cr4GNfyYgol1egZMzlHJGVAAAB9WohbsPMEomnq94H-gkKERtVpbEcxrrJfTSX9D7l58C1j6-l27MERA05uMgSlPjR3JxCY0ZyJMg
# Resuming downloads with wget
# wget --continue http://example.com/centos-7-image.iso