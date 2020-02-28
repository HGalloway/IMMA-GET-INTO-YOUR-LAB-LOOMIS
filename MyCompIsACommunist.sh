#!/bin/bash
for num in {1..20};do
#sudo scp -r beep/beep "castlinux@10.27.5.$num:/usr/local/bin/"
echo "Sending Files"
#scp -r Russian.txt "root@f$num:/home/kiosk"
#scp -r la_roach.txt "root@f$num:/home/kiosk"
scp -r AIRO.txt "root@f$num:/home/kiosk"
#ssh "root@f$num" "chvt 1"
ssh "root@f$num" "yum -y install at"
ssh "root@f$num" "yum -y install beep"
echo "Setting up scheduled executions"
ssh "root@f$num" "at -m 17:09 today < /home/kiosk/AIRO.txt";done
#ssh "root@f$num" "at -m 16:55 today < /home/kiosk/Sand.txt"
#ssh "root@f$num" "at -m 16:56 today < /home/kiosk/la_roach.txt";done
#ssh "root@f$num" "sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.targetS" ;done
