#!/bin/bash

function enter_virtualenv {
	cd /home/gnaponie/proj/newwaiverdb/
	source bin/activate
}

if [ $# -eq 0 ]; then
	echo "put a parameter: w/waiverdb, g/greenwave, r/resultsdb"
elif [ $1 == "w" ] || [ $1 == "waiverdb" ]; then
	enter_virtualenv
	cd waiverdb/
	echo -e "working on \e[92mwaiverdb\e[0m"
	echo "+++++++++++++++++++"
	echo "LAUNCH SERVER:"
	echo -e "\e[92mPYTHONPATH=. DEV=true python3 waiverdb/manage.py run -h localhost -p 5004 --debugger\e[0m"
	echo "+++++++++++++++++++"
elif [ $1 == "g" ] || [ $1 == "greenwave" ]; then
	enter_virtualenv
	cd greenwave/
	echo -e "working on \e[92mgreenwave\e[0m"
	echo "+++++++++++++++++++"
	echo "LAUNCH SERVER:"
	echo -e "\e[92mDEV=true python run-dev-server.py\e[0m"
	echo "+++++++++++++++++++"
elif [ $1 == "r" ] || [ $1 == "resultsdb" ]; then
	enter_virtualenv
	cd resultsdb/
	echo -e "working on \e[92mresultsdb\e[0m"
	echo "+++++++++++++++++++"
	echo "LAUNCH SERVER:"
	echo -e "\e[92mDEV=true python runapp.py\e[0m"
	echo "+++++++++++++++++++"
else
	echo "wrong input"
fi

bash
