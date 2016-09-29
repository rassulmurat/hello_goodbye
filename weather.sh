#!/bin/bash

while true
do
	$(wget http://www.accuweather.com/en/kz/astana/222343/weather-forecast/222343 -O astana)
	echo $(grep -E '<span class="local-temp">(.*)&deg;C</span>' astana)
	echo end
	sleep 5
done
