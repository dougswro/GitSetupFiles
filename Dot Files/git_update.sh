#!/bin/bash
cd /home/doug/Git_Setup_Files/
git pull
git add *
git stage --all
git commit * -m "automitic script updated"
git push
