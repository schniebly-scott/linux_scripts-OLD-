#!/bin/bash

#this script runs hourly used by cronjob

yay -Sy
yay -Qu | wc -l > ~/.scripts/timed/updates.txt
