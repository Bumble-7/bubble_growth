#!/bin/bash
#SBATCH --job-name=reconst4         # Job name
#SBATCH -N 1 #Number of nodes
#SBATCH --ntasks-per-node=48  #Number of core per node
#SBATCH --error=job.%J.err  #Name of output file
#SBATCH --output=job.%J.out #Name of error file
#SBATCH --time=24:00:00 #Time take to execute the program
#SBATCH --partition=highmemory #specifies queue name(standard is the default partition if you does not specify any partition job will be submitted using default partition) other partitions You can specify hm and gpu

module load spack/0.17
module load intel/2018_4
module load gcc-8.3.0-gcc-11.2.0-lyhn5yb
# source /home/param.singh/apps/OpenFOAM/OF1812/Intel_compilation/OpenFOAM-v1812/etc/bashrc
source /home/prasanna.kulkarni/OpenFOAM_installation/v_1812/Intel_compilation/OpenFOAM-v1812/etc/bashrc

chmod +x All* par*
./parReconstructPar 20 log.parReconst
