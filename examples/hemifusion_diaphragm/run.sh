#!/bin/bash

# Source GROMACS
source /usr/local/gromacs/bin/GMXRC

# Generate a hemifusion stalk from two flat and parallel bilayers
gmx_mpi grompp -f production.mdp -o hemifusion_stalk.tpr -c flat_parallel_membranes.gro -p system.top -n index.ndx -maxwarn 1
gmx_mpi mdrun -v -deffnm hemifusion_stalk -plumed plumed_hemifusion_stalk.dat

# Induce a hemifusion diaphragm from a hemifusion stalk
gmx_mpi grompp -f production.mdp -o hemifusion_diaphragm.tpr -c hemifusion_stalk.gro -p system.top -n index.ndx -maxwarn 1
gmx_mpi mdrun -v -deffnm hemifusion_diaphragm -plumed plumed_hemifusion_diaphragm.dat
