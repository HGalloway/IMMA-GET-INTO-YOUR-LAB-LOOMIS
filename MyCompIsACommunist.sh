#!/bin/bash
for num in {1..4};do
scp -r beep/beep "root@foundation$num:/usr/local/bin/"
scp -r it.txt "root@foundation$num:/home/kiosk"
ssh "root@foundation$num" "yum install at"
ssh "root@foundation$num" "at -m 17:05 today < it.txt" ;done

  #https://github.com/johnath/beep/blob/master/beep.c // Download file before running script.
  #set up at job that executes SNA in one minute after execution of script and set up beep also.
  #at minute beep sna echo phrase
  #End goal = BEEP THE SOVIET NATIONAL ANTHEM IN LOOMIS'S LAB BECAUSE WHY NOT
