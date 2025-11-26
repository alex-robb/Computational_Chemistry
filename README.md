# Computational_Chemistry
Files for Computational Chemistry @ USC

## Launch File
The "launch.sh" file is used to start Q-Chem and tell the research super-computers what parameters to use. 

## Input Files
The input files tell Q-Chem what parameters to use. There are typically 3 parts: (1) the coordinates of the molecule (2) the commands to optimize the geometry of the molecule (3) the commands to be run on the optimized molecule

For the templates provided, insert your X,Y,Z coordinates from a software like IQmol. Then save the file as a .inp file. Typically "molecule-name.inp"

## All Together
Upload these files to your account on CARC server. 

Then run the following command where you DO NOT include .inp for the input file:
sbatch launch.sh <molecule-name>
