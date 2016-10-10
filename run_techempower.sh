#!/bin/sh

killall bench.exe
dropdb techemp 2> /dev/null
createdb techemp

urweb ./techemp/bench
cat ./techemp/create-postgres.sql | psql techemp

./techemp/bench.exe -k -q -t12 &
sleep 2

wrk -c12 -t12 -d2 http://localhost:8080/fortunes
wrk -c12 -t12 -d10 http://localhost:8080/fortunes >fortunes_baseline.txt

wrk -c12 -t12 -d2 http://localhost:8080/db
wrk -c12 -t12 -d10 http://localhost:8080/db >db_baseline.txt

wrk -c12 -t12 -d2 http://localhost:8080/queries/20
wrk -c12 -t12 -d10 http://localhost:8080/queries/20 >queries_baseline.txt

wrk -c12 -t12 -d2 http://localhost:8080/updates/20
wrk -c12 -t12 -d10 http://localhost:8080/updates/20 >updates_baseline.txt

killall bench.exe

urweb -sqlcache ./techemp/bench

./techemp/bench.exe -k -q -t12 &
sleep 2

wrk -c12 -t12 -d2 http://localhost:8080/fortunes
wrk -c12 -t12 -d10 http://localhost:8080/fortunes >fortunes_sqlcache.txt

wrk -c12 -t12 -d2 http://localhost:8080/db
wrk -c12 -t12 -d10 http://localhost:8080/db >db_sqlcache.txt

wrk -c12 -t12 -d2 http://localhost:8080/queries/20
wrk -c12 -t12 -d10 http://localhost:8080/queries/20 >queries_sqlcache.txt

wrk -c12 -t12 -d2 http://localhost:8080/updates/20
wrk -c12 -t12 -d10 http://localhost:8080/updates/20 >updates_sqlcache.txt

killall bench.exe

urweb -dyncache ./techemp/bench

./techemp/bench.exe -k -q -t12 &
sleep 2

wrk -c12 -t12 -d2 http://localhost:8080/fortunes
wrk -c12 -t12 -d10 http://localhost:8080/fortunes >fortunes_dyncache.txt

wrk -c12 -t12 -d2 http://localhost:8080/db
wrk -c12 -t12 -d10 http://localhost:8080/db >db_dyncache.txt

wrk -c12 -t12 -d2 http://localhost:8080/queries/20
wrk -c12 -t12 -d10 http://localhost:8080/queries/20 >queries_dyncache.txt

wrk -c12 -t12 -d2 http://localhost:8080/updates/20
wrk -c12 -t12 -d10 http://localhost:8080/updates/20 >updates_dyncache.txt

killall bench.exe
