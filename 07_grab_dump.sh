#!/bin/bash

cd ../SOFTWARE/GETSPLOIT


ftp -n localhost 2121 <<END_SCRIPT
quote USER ibmuser
quote PASS sys1
passive
ascii
get IBMUSER.DUMP006 DUMP006
quit
END_SCRIPT
