#!/bin/sh

echo TECHEMPOWER
echo Test,Baseline,Dyncache,Sqlcache
echo Fortunes,`sed -n '/Requests\/sec/p' fortunes_baseline.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' fortunes_dyncache.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' fortunes_sqlcache.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo Single query,`sed -n '/Requests\/sec/p' db_baseline.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' db_dyncache.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' db_sqlcache.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo Multiple queries,`sed -n '/Requests\/sec/p' queries_baseline.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' queries_dyncache.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' queries_sqlcache.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo Data updates,`sed -n '/Requests\/sec/p' updates_baseline.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' updates_dyncache.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' updates_sqlcache.txt | sed 's/Requests\/sec: \(.*\)/\1/'`

echo
echo JFAC WRITES
echo Writes/s,Baseline,Dyncache,Sqlcache
echo 0,`sed -n '/Requests\/sec/p' jfac_baseline_withwrites0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_withwrites0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_withwrites0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 0.5,`sed -n '/Requests\/sec/p' jfac_baseline_withwrites0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_withwrites0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_withwrites0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 1,`sed -n '/Requests\/sec/p' jfac_baseline_withwrites1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_withwrites1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_withwrites1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 2,`sed -n '/Requests\/sec/p' jfac_baseline_withwrites2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_withwrites2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_withwrites2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 10,`sed -n '/Requests\/sec/p' jfac_baseline_withwrites10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_withwrites10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_withwrites10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 100,`sed -n '/Requests\/sec/p' jfac_baseline_withwrites100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_withwrites100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_withwrites100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`

echo
echo JFAC CONCURRENCY
echo \#Threads,Baseline,Dyncache,Sqlcache
echo 1,`sed -n '/Requests\/sec/p' jfac_baseline_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 4,`sed -n '/Requests\/sec/p' jfac_baseline_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 8,`sed -n '/Requests\/sec/p' jfac_baseline_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 12,`sed -n '/Requests\/sec/p' jfac_baseline_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_dyncache_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' jfac_sqlcache_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`

echo
echo FRAPAPP WRITES \(1 thread\)
echo Writes/s,Baseline,Dyncache,Sqlcache
echo 0,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites1_0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites1_0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites1_0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 0.5,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites1_0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites1_0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites1_0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 1,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites1_1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites1_1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites1_1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 2,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites1_2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites1_2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites1_2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 10,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites1_10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites1_10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites1_10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 100,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites1_100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites1_100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites1_100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`

echo
echo FRAPAPP WRITES \(4 threads\)
echo Writes/s,Baseline,Dyncache,Sqlcache
echo 0,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites0.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 0.5,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites0.5.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 1,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 2,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites2.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 10,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites10.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 100,`sed -n '/Requests\/sec/p' frapapp_baseline_withwrites100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_withwrites100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_withwrites100.txt | sed 's/Requests\/sec: \(.*\)/\1/'`

echo
echo FRAPAPP CONCURRENCY
echo \#Threads,Baseline,Dyncache,Sqlcache
echo 1,`sed -n '/Requests\/sec/p' frapapp_baseline_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 4,`sed -n '/Requests\/sec/p' frapapp_baseline_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 8,`sed -n '/Requests\/sec/p' frapapp_baseline_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 12,`sed -n '/Requests\/sec/p' frapapp_baseline_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_dyncache_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_sqlcache_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`

echo
echo FRAPAPP CONCURRENCY \(easier\)
echo \#Threads,Baseline,Dyncache,Sqlcache
echo 1,`sed -n '/Requests\/sec/p' frapapp_easier_baseline_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_easier_dyncache_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_easier_sqlcache_concurrency1.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 4,`sed -n '/Requests\/sec/p' frapapp_easier_baseline_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_easier_dyncache_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_easier_sqlcache_concurrency4.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 8,`sed -n '/Requests\/sec/p' frapapp_easier_baseline_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_easier_dyncache_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_easier_sqlcache_concurrency8.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
echo 12,`sed -n '/Requests\/sec/p' frapapp_easier_baseline_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_easier_dyncache_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`,`sed -n '/Requests\/sec/p' frapapp_easier_sqlcache_concurrency12.txt | sed 's/Requests\/sec: \(.*\)/\1/'`
