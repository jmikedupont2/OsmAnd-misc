#!/bin/bash

mkdir -p extracted

AMERICAS=""
#South America
AMERICAS+="guyana""paraguay""peru""suriname""venezuela" 
#_NorthAmerica
AMERICAS+=" bermuda greenland"
# Central America
AMERICAS+=" costa_rica el_salvador honduras nicaragua panama"
# Carribean (suffix = _CentralAmerica)
AMERICAS+=" anguilla antigua_and_barbuda aruba 
          bahamas barbados british_virgin_islands 
          cayman_islands cuba dominica dominican_republic 
          haiti jamaica grenada guadeloupe martinique 
          montserrat netherlands_antilles puerto_rico  
          saint_vincent_and_the_grenadines trinidad_and_tobago virgin_islands_us"
# ASIA
ASIA="";
ASIA+="hong_kong macao north_korea south_korea"
ASIA+="brunei cambodia christmas_island east_timor laos malaysia myanmar singapore spratly_islands thailand vietnam"
ASIA+="afghanistan bangladesh bhutan british_indian_ocean_territory iran maldives nepal sri_lanka"
ASIA+="armenia bahrain caspian_sea cyprus georgia jordan kuwait lebanon oman qatar saudi_arabia syria turkey united_arab_emirates yemen"

#TEST
TEST=""
TEST+="rhone-alpes"
for i in $TEST
do
	echo "Extracting $i country from planet..."
	osmconvert $1 -B=polygons/test/$i.poly --complex-ways --complete-ways --drop-author -o=extracted/$i.pbf
done
