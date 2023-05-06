#!/bin/bash

# echo '> gcc clock_update.c clock_sim.c clock_main.c'
# gcc clock_update.c clock_sim.c clock_main.c

echo '> make clock_main'
make clock_main
echo

declare -a ex
ex+=(0)
ex+=(16)
ex+=( $((5*16+9)) )
ex+=( $((60*16+1)) )
ex+=( $(((1*3600+15*60+7)*16+3)) )
ex+=( $(((10*3600+37*60+42)*16+7)) )
ex+=( $(((11*3600+59*60+59)*16+7)) )
ex+=( $(((11*3600+59*60+59)*16+12)) )
ex+=( $(((14*3600+47*60+32)*16+13)) )
ex+=( $(((18*3600+0*60+13)*16+2)) )
ex+=( $(((23*3600+45*60+39)*16+2)) )
ex+=( $(((23*3600+59*60+59)*16+2)) )
ex+=( $(((24*3600+45*60+39)*16+1)) )


for t in ${ex[@]}; do
    echo '> ./clock_main' $t
    ./clock_main $t
    echo
    echo
done

