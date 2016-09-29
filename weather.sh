#!/bin/bash
while true
do
	wget http://www.accuweather.com/en/kz/astana/222343/weather-forecast/222343 -O astana 2> /dev/null
	reg=$(grep -E '<span class="local-temp">(.*)&deg;C</span>' astana)
	echo $(sed -r 's/.*>([0-9]*)&.*/\1/g' <<< "$reg")
	timeout=$(sed -r 's/timeout=(.*)/\1/g' config.ini)
	sleep "$timeout"
done
