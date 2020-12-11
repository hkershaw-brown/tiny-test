#!/bin/bash


new=mpas_test.new
master=mpas_test.master
manhat=mpas_test.manhattan

run1=$new
run2=$manhat


# text files
declare -a output=("obs_seq.final")
 
for file in ${output[@]}; do
   diff $run1/$file $run2/$file 
done

# netcdf files
declare -a output=("preassim_member_0001.nc" "preassim_mean.nc" "preassim_sd.nc" "output_sd.nc" "output_mean.nc")

for file in ${output[@]}; do
   nccmp -d $run1/$file $run2/$file 
done
