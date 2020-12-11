#!/bin/bash


new=mpas_test.new
master=mpas_test.master
manhat=mpas_test.manhatten


# text files
declare -a output=("obs_seq.final")
 
for file in ${output[@]}; do
   diff $new/$file $master/$file 
done

# netcdf files
declare -a output=("preassim_member_0001.nc" "preassim_mean.nc" "preassim_sd.nc" "output_sd.nc" "output_mean.nc")

for file in ${output[@]}; do
   nccmp -d $new/$file $master/$file 
done
