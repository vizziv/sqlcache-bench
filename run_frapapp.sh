#!/bin/sh

killall testing.exe testing_easier.exe
dropdb frap 2> /dev/null
createdb frap

urweb ~/frapapp/testing
cat frap.sql | psql frap

~/frapapp/testing.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_baseline_concurrency1.txt
killall testing.exe
~/frapapp/testing.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_baseline_concurrency4.txt
killall testing.exe
~/frapapp/testing.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c8 -t8 -d10 http://localhost:8080/Private/student >frapapp_baseline_concurrency8.txt
killall testing.exe
~/frapapp/testing.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c12 -t12 -d10 http://localhost:8080/Private/student >frapapp_baseline_concurrency12.txt
killall testing.exe

echo "DELETE FROM uw_lectureforum_threads;" | psql frap
~/frapapp/testing.exe -q -t4 &
sleep 4

wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites0.txt
DELAY=2 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites0.5.txt
killall frap.sh
DELAY=1 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites1.txt
killall frap.sh
DELAY=0.5 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites2.txt
killall frap.sh
DELAY=0.1 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites10.txt
killall frap.sh
DELAY=0.01 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites100.txt
killall frap.sh

killall testing.exe

echo "DELETE FROM uw_lectureforum_threads;" | psql frap
~/frapapp/testing.exe -q -t1 &
sleep 4

wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites1_0.txt
DELAY=2 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites1_0.5.txt
killall frap.sh
DELAY=1 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites1_1.txt
killall frap.sh
DELAY=0.5 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites1_2.txt
killall frap.sh
DELAY=0.1 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites1_10.txt
killall frap.sh
DELAY=0.01 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_baseline_withwrites1_100.txt
killall frap.sh

killall testing.exe

urweb -sqlcache ~/frapapp/testing

~/frapapp/testing.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_concurrency1.txt
killall testing.exe
~/frapapp/testing.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_concurrency4.txt
killall testing.exe
~/frapapp/testing.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c8 -t8 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_concurrency8.txt
killall testing.exe
~/frapapp/testing.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c12 -t12 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_concurrency12.txt
killall testing.exe

echo "DELETE FROM uw_lectureforum_threads;" | psql frap
~/frapapp/testing.exe -q -t4 &
sleep 4

wrk -c4 -d4 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites0.txt
DELAY=2 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites0.5.txt
killall frap.sh
DELAY=1 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites1.txt
killall frap.sh
DELAY=0.5 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites2.txt
killall frap.sh
DELAY=0.1 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites10.txt
killall frap.sh
DELAY=0.01 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites100.txt
killall frap.sh

killall testing.exe

echo "DELETE FROM uw_lectureforum_threads;" | psql frap
~/frapapp/testing.exe -q -t1 &
sleep 4

wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites1_0.txt
DELAY=2 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites1_0.5.txt
killall frap.sh
DELAY=1 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites1_1.txt
killall frap.sh
DELAY=0.5 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites1_2.txt
killall frap.sh
DELAY=0.1 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites1_10.txt
killall frap.sh
DELAY=0.01 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_sqlcache_withwrites1_100.txt
killall frap.sh

killall testing.exe

urweb -dyncache ~/frapapp/testing

~/frapapp/testing.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_dyncache_concurrency1.txt
killall testing.exe
~/frapapp/testing.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_dyncache_concurrency4.txt
killall testing.exe
~/frapapp/testing.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c8 -t8 -d10 http://localhost:8080/Private/student >frapapp_dyncache_concurrency8.txt
killall testing.exe
~/frapapp/testing.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c12 -t12 -d10 http://localhost:8080/Private/student >frapapp_dyncache_concurrency12.txt
killall testing.exe

echo "DELETE FROM uw_lectureforum_threads;" | psql frap
~/frapapp/testing.exe -q -t4 &
sleep 4

wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites0.txt
DELAY=2 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites0.5.txt
killall frap.sh
DELAY=1 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites1.txt
killall frap.sh
DELAY=0.5 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites2.txt
killall frap.sh
DELAY=0.1 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites10.txt
killall frap.sh
DELAY=0.01 ./frap.sh &
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites100.txt
killall frap.sh

killall testing.exe

echo "DELETE FROM uw_lectureforum_threads;" | psql frap
~/frapapp/testing.exe -q -t1 &
sleep 4

wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites1_0.txt
DELAY=2 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites1_0.5.txt
killall frap.sh
DELAY=1 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites1_1.txt
killall frap.sh
DELAY=0.5 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites1_2.txt
killall frap.sh
DELAY=0.1 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites1_10.txt
killall frap.sh
DELAY=0.01 ./frap.sh &
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_dyncache_withwrites1_100.txt
killall frap.sh

killall testing.exe

urweb ~/frapapp/testing_easier

~/frapapp/testing_easier.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_easier_baseline_concurrency1.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_easier_baseline_concurrency4.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c8 -t8 -d10 http://localhost:8080/Private/student >frapapp_easier_baseline_concurrency8.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c12 -t12 -d10 http://localhost:8080/Private/student >frapapp_easier_baseline_concurrency12.txt
killall testing_easier.exe

urweb -dyncache ~/frapapp/testing_easier

~/frapapp/testing_easier.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_easier_dyncache_concurrency1.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_easier_dyncache_concurrency4.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c8 -t8 -d10 http://localhost:8080/Private/student >frapapp_easier_dyncache_concurrency8.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c12 -t12 -d10 http://localhost:8080/Private/student >frapapp_easier_dyncache_concurrency12.txt
killall testing_easier.exe

urweb -sqlcache ~/frapapp/testing_easier

~/frapapp/testing_easier.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c1 -t1 -d10 http://localhost:8080/Private/student >frapapp_easier_sqlcache_concurrency1.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c4 -t4 -d10 http://localhost:8080/Private/student >frapapp_easier_sqlcache_concurrency4.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c8 -t8 -d10 http://localhost:8080/Private/student >frapapp_easier_sqlcache_concurrency8.txt
killall testing_easier.exe
~/frapapp/testing_easier.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/Private/student
wrk -c12 -t12 -d10 http://localhost:8080/Private/student >frapapp_easier_sqlcache_concurrency12.txt
killall testing_easier.exe
