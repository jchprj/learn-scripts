# AWK Vs NAWK Vs GAWK https://www.thegeekstuff.com/2011/06/awk-nawk-gawk/ 

# AWK http://linuxcommand.org/lc3_adv_awk.php

awk 'BEGIN {ORS = "\n\n"} {print}' file1

awk 'BEGIN{total=0;current=0;last=0;n=1;pp=0}{total++;current=substr($0,index($0,2018)+11,2);if(current>0&&current>last){print last,n;n=1;for(i=pp+1;i<current+0;i++)print i,0;pp=current}else n++;last=current}END{print last,n;print "total",total}' file1

# Generate cp command
ls -w1 |awk '{print "cp "$0"* temp_test"}'

# Generate awk command
ls|awk '{print "cat "$0"|awk '\''{print \"2017-03-"substr($NF,5,2)" \"$0}'\''>"substr($NF,1,9)".txt"}'

# Change space to tab delimeter
awk '{print $1,$2,"\t",$3,"\t",$4,"\t",$5,"\t",$6}' file_table

awk '{print $1}' file1
# Calculate total and max
echo ???
awk 'BEGIN{max=0;total=0;cnt=0};{cnt++;total+=$1;if($1>max){ max=$1}};END{print cnt, total, max}' file1


# https://stackoverflow.com/questions/19075671/how-do-i-use-shell-variables-in-an-awk-script
variable="line one\nline two"
awk -v var="$variable" 'BEGIN {print var}'
# line one
# line two



# https://stackoverflow.com/questions/4366533/how-to-remove-the-lines-which-appear-on-file-b-from-another-file-a
# awk 'NR==FNR{a[$0];next} !($0 in a)' fileB fileA


# https://unix.stackexchange.com/questions/102008/how-do-i-trim-leading-and-trailing-whitespace-from-each-line-of-some-output
echo ' abc ' | awk '{$1=$1};1'


# https://stackoverflow.com/questions/2609552/how-can-i-use-as-an-awk-field-separator
echo '1: ' | awk -F  ':' '/1/ {print $1}'