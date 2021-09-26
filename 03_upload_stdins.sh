#!/bin/bash

cd ../SOFTWARE/GETSPLOIT


ftp -n localhost 2121 <<END_SCRIPT
quote USER ibmuser
quote PASS sys1
passive
binary
put LGBT400 IBMUSER.LGBT400
put LOC400 IBMUSER.LOC400
put WTO400 IBMUSER.WTO400
quit
END_SCRIPT
