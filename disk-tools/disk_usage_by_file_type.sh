#!/bin/bash

cd /var/www

for ext in jpg log mp4
do
	echo "== .$ext files=="
	find . -type f -name ".*$ext" -exec du -ch {} + | grep total$
	echo ""
done

