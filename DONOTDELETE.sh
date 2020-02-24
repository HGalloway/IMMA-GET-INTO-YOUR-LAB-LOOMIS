#!/bin/bash
for num in {1..20}
do
  ssh-keygen
  ssh-copy-id 10.27.5.$num
  #https://github.com/johnath/beep/blob/master/beep.c
  scp beep.c cyberpatriots@10.27.5.$num
  #LEARN HOW TO USE AT
  ssh cyberpatriots@10.27.5.$num 'apt install at' #set up at job that executes SNA in one minute after execution of script
  #at minute beep sna echo phrase
  
  
  #End goal = BEEP THE SOVIET NATIONAL ANTHEM IN LOOMIS'S LAB BECAUSE WHY NOT
