#!/bin/bash
for num in {15..40}; do ssh-copy-id "castlinux@10.27.5.$num";done
RedL3ader--
!/bin/bash
for num in {15..40};do
scp -r beep/beep "castlinux@10.27.5.$num$num:/usr/local/bin/"
scp -r thecock.txt "castlinux@10.27.5.$num$num:/home/castlinux"
scp -r thecock.txt "castlinux@10.27.5.$num$num:/home/castlinux"
scp -r Sand.txt "castlinux@10.27.5.$num:/home/castlinux"
#ssh "root@foundation$num" "chvt 5"
#ssh "root@foundation$num" "chvt 1"
ssh "castlinux@10.27.5.$num" "yum install at"
ssh "castlinux@10.27.5.$num" "at -m 12:51 today < /home/kiosk/Russian.txt"
ssh "castlinux@10.27.5.$num" "at -m 12:52 today < /home/kiosk/Sand.txt"
ssh "castlinux@10.27.5.$num" "at -m 12:53 today < /home/kiosk/la_roach.txt" ;done
#ssh "root@foundation$num" "sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.targetS"
