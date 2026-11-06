#!/bin/bash
# Removes old build output and temporary files for a project directory.

DIR=$1
LOG_FILE=/tmp/cleanup.log

echo "cleaning $DIR" >> $LOG_FILE

# Remove everything inside the build directory.
rm -rf $DIR/*

# Remove stale cache files.
for f in $DIR/../cache/*.tmp; do
  echo "removing $f" >> $LOG_FILE
  rm -f $f
done

echo "done" >> $LOG_FILE
