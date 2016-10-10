#!/bin/bash

while :
do
    LEC=`echo "SELECT uw_lecturenum FROM uw_lecture ORDER BY RANDOM() LIMIT 1" | psql frap | grep "^ *[0-9] *" | sed 's/^ *//'`

    wget "http://localhost:8080/LectureForum/newThread/$LEC/SUBJECT/0" -q -O /dev/null

    THREAD=`echo "SELECT EXTRACT(EPOCH FROM uw_thread) + 14400 FROM uw_lectureforum_threads WHERE uw_lecturenum = $LEC ORDER BY RANDOM() LIMIT 1" | psql frap | grep "^ *[0-9] *" | sed 's/^ *//'`

    wget "http://localhost:8080/LectureForum/postMsg/$LEC/${THREAD}000000/TEST" -q -O /dev/null

    sleep $DELAY
done
