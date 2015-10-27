#!/bin/bash
touch   /home/mewded/Ark/w3af/all_vuln1.w3af | chmod 755 /home/mewded/Ark/w3af/all_vuln1.w3af;
cat /home/mewded/Ark/w3af/W3AF/all_vuln.w3af  | sed 's/dom/$1/g'  >>  /home/mewded/Ark/w3af/all_vuln1.w3af;
chmod u+x all_vuln1.w3af;
./w3af_console -s all_vuln1.w3af;
rm all_vuln1.w3af;
