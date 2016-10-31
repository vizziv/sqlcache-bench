# Sqlcache Benchmarks
This is the artifact accompanying the POPL'16 paper "A Program Optimization for Automatic Database Result Caching".

Sqlcache is a new feature for the [Ur/Web](http://www.impredicative.com/ur/) programming language that automatically instruments applications with caching of SQL query results and sound invalidation of those caches.
The [instructions.sh](https://github.com/vizziv/sqlcache-bench/blob/master/instructions.sh) file in this repository is a list of commands that installs Ur/Web with Sqlcache, its benchmarks, and dependencies.
There is also a [virtual machine image](https://www.dropbox.com/s/cqt181ab8svuff7/POPL%20Artifact.ova?dl=0) with everything installed already.

Some notes about the list of commands:

* The commands are a record of what I needed to set up the VM image, which started as a fresh Ubuntu 16.04 Server installation.
* The list can be run with source, but you should first read and possibly modify/remove the first two commands to fit your existing setup.
  (The first installs many packages and the second creates a database superuser.)

Some notes about the virtual machine image:

* To run the VM image, you need VirtualBox (or similar). To import it in VirtualBox, select File > Import Appliance.
* The username is "popl-artifact", and the password is "artifact" (both without quotes).
* Sqlcache needs about 8 GB of memory to compile one of the benchmarks.
* My VM was configured with just one CPU, so the multi-threaded performance was no better than the single-threaded.
* To run the benchmark, execute the last section of commands, which is copied below.
```bash
# Run the benchmark!
cd ~/sqlcache-bench
./run_all.sh
./tabulate.sh
```
* The VM sometimes can't handle a few of the benchmarks, the main symptom of which is that `wrk` fails to connect.
  However, all the benchmarks in the paper run consistently in the VM.

We include the three benchmarks in the paper: TechEmpower (called "techemp" in the artifact), Dinners (called "jfac" in the artifact), and Course Management (called "frap" or "frapapp" in the artifact). It is normal to get the occasional DML error when running the frap-with-writes benchmark.

Contact `zscully at cs dot cmu dot edu` with any questions!
