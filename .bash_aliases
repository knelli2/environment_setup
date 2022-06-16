#print the name of the machine when you open the terminal
figlet -f term -c "WELCOME TO"
figlet -f slant -c "JARRUS"

#Navigation and shortcut commands
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
alias .......="cd ../../../../../../"
alias ........="cd ../../../../../../../"
alias .........="cd ../../../../../../../../"
alias cl="clear; ls"
alias dtop="cd /mnt/c/Users/Kyle\'s\ PC/Desktop"
alias lh="ls | head -15"
alias lt="ls | tail -15"
alias lw="ls | wc -l"
alias cdl='cd $( ls -d * | tail -n1 )'
alias cdf='cd $( ls -d * | head -n1 )'

#Because I'm stupid
alias nautlius="nautilus"

#SpEC Stuff
alias rmsymdata="rm *.dat *.h5 *.log *.oned *.txt *.visit *.pvd *.ygraph"
export spec="/home/knelli/Documents/research/spec"
export spectre="/home/knelli/Documents/researchspectre"
export IMG_DIR="/home/knelli/Documents/research/caltech/singularity_images"

#Compile SpECTRE
alias spectre_run_cmake_clang="\
     cmake -D CMAKE_CXX_COMPILER=clang++-10 \
           -D CMAKE_C_COMPILER=clang-10 \
           -D CMAKE_Fortran_COMPILER=gfortran \
           -D CHARM_ROOT=/home/knelli/tools/charm_7/multicore-linux-x86_64 \
           -D CMAKE_CXX_FLAGS=-Werror \
           -D CMAKE_BUILD_TYPE=Debug \
           -D BUILD_PYTHON_BINDINGS=ON \
           -D BUILD_SHARED_LIBS=ON ../"
alias spectre_run_cmake_gcc="\
     cmake -D CMAKE_Fortran_COMPILER=gfortran \
           -D CHARM_ROOT=/home/knelli/tools/charm_7/multicore-linux-x86_64 \
           -D CMAKE_CXX_FLAGS=-Werror \
           -D CMAKE_BUILD_TYPE=Debug \
           -D BUILD_PYTHON_BINDINGS=ON \
           -D BUILD_SHARED_LIBS=ON ../"
alias spectre_run_cmake_clang_charm6="\
     cmake -D CMAKE_CXX_COMPILER=clang++-10 \
           -D CMAKE_C_COMPILER=clang-10 \
           -D CMAKE_Fortran_COMPILER=gfortran \
           -D CHARM_ROOT=/home/knelli/tools/charm_shared/multicore-linux-x86_64-clang-10 \
           -D CMAKE_CXX_FLAGS=-Werror \
           -D CMAKE_BUILD_TYPE=Debug \
           -D BUILD_PYTHON_BINDINGS=ON \
           -D BUILD_SHARED_LIBS=ON ../"
alias spectre_run_cmake_gcc_charm6="\
     cmake -D CMAKE_Fortran_COMPILER=gfortran \
           -D CHARM_ROOT=/home/knelli/tools/charm_shared/multicore-linux-x86_64-clang-10 \
           -D CMAKE_CXX_FLAGS=-Werror \
           -D CMAKE_BUILD_TYPE=Debug \
           -D BUILD_PYTHON_BINDINGS=ON \
           -D BUILD_SHARED_LIBS=ON ../"
alias spectre_run_cmake="spectre_run_cmake_clang"

#git stuff
alias gitstat="git status"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gb="git branch"
alias gca="git commit --amend --no-edit"
function gitlog() {

if [ -z $1 ]; then
  lines=10
else
  lines=$1
fi
git log --oneline -n $lines

}

#Access networks
alias bw="ssh -X nelli@bw.ncsa.illinois.edu"
alias nasa="ssh -X -oKexAlgorithms=+diffie-hellman-group1-sha1 knelli@sfe2.nas.nasa.gov"
#alias allo="ssh colten1@allo.physics.illinois.edu"
alias allo="ssh -X 192.17.208.108"
alias alloX="ssh -X 192.17.208.108"
alias alloY="ssh -Y 192.17.208.108"
#alias stu="ssh 192.17.208.110"
alias stu="ssh -X knelli@astro.physics.illinois.edu"
alias trex="ssh colten1@trex.physics.illinois.edu"
alias vraptor="ssh colten1@vraptor.physics.illinois.edu"
alias ptero="ssh colten1@ptero.physics.illinois.edu"
alias tritops="ssh colten1@tritops.physics.illinois.edu"
alias stego="ssh colten1@192.17.210.20"
alias wheeler="ssh -X -A knelli@wheeler.caltech.edu"
alias caltechhpc="ssh -X -A knelli@login.hpc.caltech.edu"
alias bridges="ssh -X -A knelli@bridges2.psc.edu"
alias expanse="ssh -X -A knelli@login.expanse.sdsc.edu"
alias frontera="ssh -X -A knelli@frontera.tacc.utexas.edu"
alias ocean="ssh -X -A knelli@ocean.fullerton.edu"
alias anvil="ssh -X -A x-knelli@anvil.rcac.purdue.edu"
alias advil="anvil"
function tano() {

ssh -X -A -o ConnectTimeout=5 knelli@138.229.248.62 -p80
if [ $? -ne 0 ]; then
  echo "Did TANOs' IP change again?"
fi

}

#For fun
alias starwars="nc towel.blinkenlights.nl 23"
alias cdblender="cd /home/knelli/Windows/Users/kcnel/Documents/Blender"

#Exports
export stu="knelli@astro.physics.illinois.edu:/home/knelli"
export allo="colten1@allo.physics.illinois.edu:/home/colten1/Desktop/"
export wheeler="knelli@wheeler.caltech.edu:/home/knelli"
export anvil="x-knelli@anvil.rcac.purdue.edu"
export tano="knelli@138.229.220.136"

#Functions
function movie() {

mencoder mf://*.png -mf w=1920:h=1080:fps=$1:type=png -ovc copy -oac copy -o $2.mp4

}

function cdn() {

tmp_folder=$(ls -d * | sed -n "$1"p)
cd $tmp_folder

}

function ff() {

find . -name "$1"

}

function mountwheeler() {

sshfs knelli@wheeler.caltech.edu:/home/knelli -o transform_symlinks -o follow_symlinks /home/knelli/Documents/research/sshfs/wheeler

}

function umountwheeler() {

fusermount -u /home/knelli/Documents/research/sshfs/wheeler

}

function mountcaltechhpc() {

sshfs knelli@login.hpc.caltech.edu:/central/home/knelli -o transform_symlinks -o follow_symlinks /home/knelli/Documents/research/sshfs/caltechhpc

}

function umountcaltechhpc() {

fusermount -u /home/knelli/Documents/research/sshfs/caltechhpc

}

function mountfrontera() {

sshfs knelli@frontera.tacc.utexas.edu:/home1/08330/knelli -o transform_symlinks -o follow_symlinks /home/knelli/Documents/research/sshfs/frontera/home

}

function umountfrontera() {

fusermount -u /home/knelli/Documents/research/sshfs/frontera/home

}
