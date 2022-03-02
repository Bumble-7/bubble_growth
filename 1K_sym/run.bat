#!/bin/sh
./Allclean
opv8
blockMesh 
cp -r 0.orig 0
snappyHexMesh -overwrite
checkMesh -allGeometry -allTopology
opv1812
topoSet
splitMeshRegions -cellZones -overwrite
rm -r constant/polyMesh
initAlphaField -region fluid
setFields -region fluid
opv1812
decomposePar -allRegions
mpirun -np 6 multiRegionPhaseChangeFlow -parallel > output.log &
