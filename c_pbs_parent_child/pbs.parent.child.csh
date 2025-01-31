#!/bin/csh


#PBS -N lwu4_toy
#PBS -A WYOM0106
#PBS -l walltime=00:01:00
#PBS -q economy
#PBS -j oe
#PBS -k eod
#PBS -l select=2:mpiprocs=5

cat $PBS_NODEFILE
set nbr_parent = 3
###Run
cd /glade/u/home/lichenwu/project/mpi_experiments/c_pbs_parent_child
make
mpiexec_mpt -spawn -np $nbr_parent ./parent.exe
make clean