#!/bin/bash

# script for testing your libftASM !
#
# Just run the script. It will go in the test/ folder, and for each X folder,
# It will test the ft_X function of your lib. Each subfolder must have
# a ref.c and a mine.c files. ref.c output what is expected,
# and mine.c output the result of the ft_X function.
# Both output are then compared (with diff).

LIB_NAME=libfts.a

# exit on error
set -e

# run `make` if the lib is not compiled
if [ ! -f  $LIB_NAME ]
then
  echo "No ${LIB_NAME} found, running Makefile..."
  make
  echo "Makefile: Done"
fi

# loop on all directories in test/
for TEST_PATH in `find test -depth 1 -type d`
do
  # Isolate name of the function tested
  TEST_NAME=${TEST_PATH/test\//}

  # Compilation
  echo "Compiling test binaries for ${TEST_NAME}..."
  gcc ${TEST_PATH}/ref.c -o ref.out
  gcc ${TEST_PATH}/mine.c $LIB_NAME -o mine.out
  echo "Compilation: Done"

  # Testing
  ./ref.out > ref.log
  ./mine.out > mine.log
  diff ref.log mine.log
  diff ref.log mine.log > ${TEST_NAME}.log
  if [ $? -ne 0 ]; then
    echo "${TEST_PATH}: Failure ; see ${TEST_NAME}.log"
  else
    echo "${TEST_PATH}: Success" ; rm ${TEST_NAME}.log
  fi

  # Delete temporary files
  rm -f ref.out ref.log mine.out mine.log
done

echo "Tests complete. For each failed test, a file '<NAME>.log' has been created with more informations about the error."