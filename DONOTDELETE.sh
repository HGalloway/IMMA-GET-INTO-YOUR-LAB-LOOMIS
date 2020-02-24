#!/bin/bash
for num in {1..20}
do
  ssh-keygen
  ssh-copy-id 10.27.5.$num
  scp beep.c cyberpatriots@10.27.5.$num
