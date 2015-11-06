#!/bin/bash

cd /home/aleksii/w3af/W3AF
touch  Script.w3af | chmod 755 Script.w3af
sed 's|set|set target http://cert.gov.ua|' MyScript.w3af > Script.w3af 
./w3af_console -s Script.w3af 
