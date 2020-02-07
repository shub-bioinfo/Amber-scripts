
#---------------------------AMBER-----------------------------------------
#For Amber installation
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install csh flex patch gfortran g++ make xorg-dev libbz2-dev zlib1g-dev libboost-dev libboost-thread-dev libboost-system-dev

#After that set the AMBERHOME path 
export AMBERHOME=/path/to/install/amber
source /path/amber/installed/amber14/amber.sh

sudo ./configure gnu
make install
cd AmberTools/src/
./configure_mpich gnu
cd $AMBERHOME
./configure -mpi gnu
make install

