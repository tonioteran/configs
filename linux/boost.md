# Boost library installation:

The following script will download, extract and install the Boost library:

```bash
# Get and install boost (a dependency of gtsam)
echo Getting Boost (GTSAM Dependency) ...
wget http://sourceforge.net/projects/boost/files/boost/1.57.0/boost_1_57_0.tar.bz2 
echo Installing Boost (GTSAM Dependency) ...
tar --bzip2 -xf boost_1_57_0.tar.bz2
rm boost_1_57_0.tar.bz2
cd boost_1_57_0
sudo ./bootstrap.sh 
sudo ./b2 install
sudo cp - boost /usr/local/include
cd ../..
```
