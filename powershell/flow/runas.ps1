# https://superuser.com/questions/42537/is-there-any-sudo-command-for-windows
# runas [{/profile|/noprofile}] [/env] [/netonly] [/smartcard] [/showtrustlevels] [/trustlevel] /user:UserAccountName program
runas /noprofile /user:Administrator "cmd"