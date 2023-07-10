#!/bin/bash

if [ -f /home/doug/Code/Move_to_git_for_comp_setup_files/dockerinstall.sh ]
	then
		echo "its there bb!"
	else
		echo "no dockerinsall.sh"
fi

if [ -d /var/ ]
  then
	  echo "var is there"
fi

if [ -d /asshole/ ]
	then
		echo "weird name dude"
	else
		echo "no one names a directory that"
fi
