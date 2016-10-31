# Install dependencies.
sudo apt install mlton libssl-dev libpq-dev postgresql make autoconf libtool git mercurial wrk

# You may need to create a databse user with something like this.
sudo -u postgres createuser $USER -s

# Clone libraries and benchmarks.
git clone https://github.com/vizziv/urweb.git
hg clone http://hg.impredicative.com/ajaxUpload
hg clone http://hg.impredicative.com/bootstrap
git clone https://github.com/achlipala/upo.git
git clone https://github.com/achlipala/upo_mit.git
git clone https://github.com/achlipala/frapapp.git
git clone https://github.com/vizziv/sqlcache-bench.git

# Check out correct branches of benchmark applications.
cd ~/upo
git checkout remotes/origin/sqlcache-experiments
cd ~/frapapp
git checkout remotes/origin/sqlcache-experiments

# Install Ur/Web.
cd ~/urweb
./autogen.sh
./configure
make
sudo make install

# Install libraries.
cd ~/ajaxUpload
./autogen.sh
./configure
make
sudo make install
sudo ln -s ~/bootstrap /usr/local/lib/urweb/ur/bootstrap
sudo ln -s ~/upo /usr/local/lib/urweb/ur/upo
sudo ln -s ~/upo_mit /usr/local/lib/urweb/ur/upo_mit

# Run the benchmark!
cd ~/sqlcache-bench
./run_all.sh
./tabulate.sh
