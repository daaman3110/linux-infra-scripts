#!/bin/bash

# Detecting zombie process and killing them

ps -eo pid,ppid,stat,cmd | awk '$3 == "Z"' | awk '{print $2}' | xargs -r kill -9

