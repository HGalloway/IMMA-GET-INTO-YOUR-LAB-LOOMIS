#!/bin/bash
ssh-keygen
  
for num in {1..20}
do
  ssh-copy-id 10.27.5.$num
  #https://github.com/johnath/beep/blob/master/beep.c // Download file before running script. 
  scp -r beep cyberpatriots@10.27.5.$num
  #cd beep
  #make install
  #LEARN HOW TO USE AT
  ssh cyberpatriots@10.27.5.$num 'apt install at' at -m 13:20 today < it.txt
  #set up at job that executes SNA in one minute after execution of script and set up beep also.
  #at minute beep sna echo phrase
  
  
  #End goal = BEEP THE SOVIET NATIONAL ANTHEM IN LOOMIS'S LAB BECAUSE WHY NOT
