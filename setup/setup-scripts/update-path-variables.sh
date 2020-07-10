#!/bin/bash
#1)Update path variables in scripts:
sed -i "s#/home/dlcheng#$HOME#g" "$HOME"/bin/SpArcFiRe-pyvenv/bin/activate ##for this line to work, symbolic link needs to be created successfully
##  ^above line changes line: VIRTUAL_ENV="/home/dlcheng/bin/SpArcFiRe-pyvenv" in file /bin/SpArcFiRe-pyvenv/bin/activate

NAME="$(echo "$HOME" | cut -d'/' -f3)" #assume HOME in form of: /home/wschallo 
sed -i "s/dlcheng/$NAME/g" "$HOME"/bin/SpArcFiRe ##for this line to work, symbolic link needs to be created successfully

#2) fix permission issues:
chmod +x "$HOME"/bin/ArcServer/run_findClusterArcsServer.sh
chmod +x "$HOME"/bin/wschallo/SpArcFiRe-run.sh