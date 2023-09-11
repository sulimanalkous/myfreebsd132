#!/bin/sh


FILEPATH=~/.togglevol
CURRVOL=`mixer vol | awk '{print $NF}'`

## DEBUG
#echo "mixer vol: $CURRVOL"

if [ $CURRVOL = "0:0" ]; then
  ## return the value from file
  FILEVOL=`cat $FILEPATH`

  mixer vol $FILEVOL

else
  ## save current value to file
    echo "$CURRVOL" > $FILEPATH

    mixer vol 0:0
fi
