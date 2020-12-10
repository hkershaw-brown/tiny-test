#!/bin/bash


new=mpas_test.new
master=mpas_test.master
manhat=mpas_test.manhatten

declare -a output=("obs_seq.final")
 
# Iterate the string array using for loop
for file in ${output[@]}; do
   diff $new/$file $master/$file 
done

