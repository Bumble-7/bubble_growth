#!/bin/sh
./Allclean
touch post.foam
blockMesh -region fluid
cp -R 0.orig 0
initAlphaField -region fluid
# decomposePar -allRegions
# mpirun -np 2 multiRegionPhaseChangeFlow -parallel > output.log &
# multiRegionPhaseChangeFlow > output.log &

# decomposePar -allRegions
# mpirun -np 20 multiRegionPhaseChangeFlow -parallel > output.log &
