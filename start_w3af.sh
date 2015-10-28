#!/bin/bash
echo "Копирование исходного скрипта запуска";
touch /home/"$USER"/Ark/w3af/W3AF/all_vuln1.w3af | chmod 755 /home/"$USER"/Ark/w3af/W3AF/all_vuln1.w3af;
echo "Замена параметра имени";
cat /home/"$USER"/Ark/w3af/W3AF/all_vuln.w3af  | sed 's/dom/'$1'/g'  >>  /home/"$USER"/Ark/w3af/all_vuln1.w3af;
echo "Права на исполнение ";
chmod 755 all_vuln1.w3af;
echo "Запуск скрипта сканирования";
cd  /home/"$USER"/Ark/w3af/;
./w3af_console -s all_vuln1.w3af;
echo "Удаление созданого скрипта";
rm all_vuln1.w3af;
