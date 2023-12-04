#!/bin/bash

# Production time.

source /usr/local/gromacs/bin/GMXRC

gmx_mpi grompp -f productionNuc.mdp -o Nucleated.tpr -c start.gro -p system.top -n index.ndx -maxwarn 1
gmx_mpi mdrun -v -deffnm Nucleated -plumed plumedNuc.dat

gmx_mpi grompp -f productionEx.mdp -o Expanded.tpr -c Nucleated.gro -p system.top -n index.ndx -maxwarn 1
gmx_mpi mdrun -v -deffnm Expanded -plumed plumedEx.dat
