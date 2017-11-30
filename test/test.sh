#!/bin/sh
#
# run the inkscape-thunderlaser extension standalone.


svg=$1
test -z "$svg" && svg="Zeichnung.svg"
test -n "$2" && ids="--id=$2"   # --id=rect4485
dir=$(dirname $0)

export PYTHONPATH=/usr/share/inkscape/extensions/
set -x
python $dir/../thunderlaser.py $ids --tab="advanced" --speed=30 --minpower1=7 --maxpower1=18 --smoothness=0.2 --freq1=20 --maxwidth=900 --maxheight=600 --bbox_only=false --dummy=true $svg
