#!/bin/bash

git pull
git add *
git stage --all
git commit * -m "automitic script updated"
git push
