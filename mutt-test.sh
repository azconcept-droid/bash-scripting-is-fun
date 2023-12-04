#!/bin/bash

echo "Sending mail now" >> myReport.txt


echo "This is a test mail from within a script" | mutt -s 'Script Test Mail' -a myReport.txt -- yahayaazeez@yahoo.com
#echo "This is a test mail from within a script" | mutt -s 'Script Test Mail' -a myReport.txt -- martin.mato@ingrydacademy.com martin.mato@ymail.com
muttStat=$?

if [ $muttStat -eq 0 ]; then
	echo "Mail sent successfully"
else
	echo "Mail sending failed"
fi
