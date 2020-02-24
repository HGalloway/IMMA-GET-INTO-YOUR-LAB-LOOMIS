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
  ssh cyberpatriots@10.27.5.$num 'sudo yum install at' 'cd beep' 'make install' 'at -m 13:20 today beep -l 375 -f 392 -n -l 750 -f 523 -n -l 463 -f 392 -n -l 187 -f 440 -n -l 750 -f 494 -n -l 375 -f 330 -n -l 375 -f 330 -n -l 750 -f 440 -n -l 463 -f 392 -n -l 187 -f 349 -n -l 750 -f 392 -n -l 463 -f 262 -n -l 187 -f 262 -n -l 750 -f 294 -n -l 463 -f 294 -n -l 187 -f 330 -n -l 750 -f 349 -n -l 463 -f 349 -n -l 187 -f 392 -n -l 750 -f 440 -n -l 375 -f 494 -n -l 375 -f 523 -n -l 1125 -f 587'
  #set up at job that executes SNA in one minute after execution of script and set up beep also.
  #at minute beep sna echo phrase
  
  #End goal = BEEP THE SOVIET NATIONAL ANTHEM IN LOOMIS'S LAB BECAUSE WHY NOT
