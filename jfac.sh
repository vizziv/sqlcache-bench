#!/bin/bash

COMMANDS="add
del"
COMMANDS=($COMMANDS)

while :
do
    REST=`echo "SELECT uw_restaurantname FROM uw_restaurant ORDER BY RANDOM() LIMIT 1" | psql jfac | grep Restaurant | sed 's/^ *//'`
    RESTE=`echo $REST | sed 's/ /\.20/' | sed 's/#/\.23/'`
    NEIB=`echo "SELECT uw_neighborhood FROM uw_restaurant WHERE uw_restaurantname='$REST'" | psql jfac | grep Neighborhood | sed 's/^ *//' | sed 's/ /\.20/' | sed 's/#/\.23/'`

    let "BIT = $RANDOM % 2"

    wget "http://localhost:8080/jfac/VoteRestaurant/${COMMANDS[$BIT]}//$NEIB/$RESTE" -q -O /dev/null
    sleep $DELAY
done
