#!/bin/bash

new=mpas_test.new
master=mpas_test.master
manhat=mpas_test.manhattan

for i in $new $master $manhat
do
  echo $i
  cd $i; qsub runme.pbs
  cd ..
done
