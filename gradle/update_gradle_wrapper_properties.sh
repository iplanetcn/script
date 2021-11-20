#!/bin/bash
# Copies the master versions.gradle file to each sample, to make them 
# compatible with Android Studio's "Import sample" feature.
for line in `find . -name 'gradle-wrapper.jar'`
do
  p=$(dirname "${line}");
  echo "Copying gradle-wrapper.properties -> ${p}";
  cp gradle-wrapper.properties "$p"
done
