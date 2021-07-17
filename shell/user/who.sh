# https://www.thegeekstuff.com/2009/03/4-ways-to-identify-who-is-logged-in-on-your-linux-system/
who
who | cut -d' ' -f1 | sort | uniq

who am i
