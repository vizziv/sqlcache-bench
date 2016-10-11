#!/bin/sh

killall jfac.exe
dropdb jfac 2> /dev/null
createdb jfac

urweb ~/upo/examples/jfac
cat ~/upo/examples/jfac.sql | psql jfac
ocaml jfac.ml 100 100 | psql jfac

~/upo/examples/jfac.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
sleep 4
wrk -c1 -t1 -d10 http://localhost:8080/jfac/main >jfac_baseline_concurrency1.txt
sleep 4
killall jfac.exe
sleep 4
~/upo/examples/jfac.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
sleep 4
wrk -c4 -t4 -d10 http://localhost:8080/jfac/main >jfac_baseline_concurrency4.txt
killall jfac.exe
~/upo/examples/jfac.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c8 -t8 -d10 http://localhost:8080/jfac/main >jfac_baseline_concurrency8.txt
killall jfac.exe
~/upo/examples/jfac.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c12 -t12 -d10 http://localhost:8080/jfac/main >jfac_baseline_concurrency12.txt

killall jfac.exe
~/upo/examples/jfac.exe -q -t4 &
sleep 4

wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_baseline_withwrites0.txt
DELAY=2 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_baseline_withwrites0.5.txt
killall jfac.sh
DELAY=1 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_baseline_withwrites1.txt
killall jfac.sh
DELAY=0.5 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_baseline_withwrites2.txt
killall jfac.sh
DELAY=0.1 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_baseline_withwrites10.txt
killall jfac.sh
DELAY=0.01 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_baseline_withwrites100.txt
killall jfac.sh

killall jfac.exe

urweb -sqlcache ~/upo/examples/jfac

~/upo/examples/jfac.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c1 -t1 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_concurrency1.txt
killall jfac.exe
~/upo/examples/jfac.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c4 -t4 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_concurrency4.txt
killall jfac.exe
~/upo/examples/jfac.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c8 -t8 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_concurrency8.txt
killall jfac.exe
~/upo/examples/jfac.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c12 -t12 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_concurrency12.txt

killall jfac.exe
~/upo/examples/jfac.exe -q -t4 &
sleep 4

wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_withwrites0.txt
DELAY=2 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_withwrites0.5.txt
killall jfac.sh
DELAY=1 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_withwrites1.txt
killall jfac.sh
DELAY=0.5 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_withwrites2.txt
killall jfac.sh
DELAY=0.1 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_withwrites10.txt
killall jfac.sh
DELAY=0.01 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_sqlcache_withwrites100.txt
killall jfac.sh

killall jfac.exe

urweb -dyncache ~/upo/examples/jfac

~/upo/examples/jfac.exe -q -t1 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c1 -t1 -d10 http://localhost:8080/jfac/main >jfac_dyncache_concurrency1.txt
killall jfac.exe
~/upo/examples/jfac.exe -q -t4 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c4 -t4 -d10 http://localhost:8080/jfac/main >jfac_dyncache_concurrency4.txt
killall jfac.exe
~/upo/examples/jfac.exe -q -t8 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c8 -t8 -d10 http://localhost:8080/jfac/main >jfac_dyncache_concurrency8.txt
killall jfac.exe
~/upo/examples/jfac.exe -q -t12 &
sleep 4
wrk -c12 -t12 -d2 http://localhost:8080/jfac/main
wrk -c12 -t12 -d10 http://localhost:8080/jfac/main >jfac_dyncache_concurrency12.txt

killall jfac.exe
~/upo/examples/jfac.exe -q -t4 &
sleep 4

wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_dyncache_withwrites0.txt
DELAY=2 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_dyncache_withwrites0.5.txt
killall jfac.sh
DELAY=1 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_dyncache_withwrites1.txt
killall jfac.sh
DELAY=0.5 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_dyncache_withwrites2.txt
killall jfac.sh
DELAY=0.1 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_dyncache_withwrites10.txt
killall jfac.sh
DELAY=0.01 ./jfac.sh &
wrk -c4 -d4 -d10 http://localhost:8080/jfac/main >jfac_dyncache_withwrites100.txt
killall jfac.sh

killall jfac.exe
