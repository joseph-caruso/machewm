#!/bin/sh
PAPEROS_DIR=/paperos
MACHEWM_DIR=/paperos/machewm
MACHEWM_START_SCRIPT=/usr/bin/machewm

# Delete pre-existing version
if [ -d "$MACHEWM_DIR" ]; then
    printf '%s\n' "Removing Lock ($MACHEWM_DIR)"
    rm -rf "$MACHEWM_DIR"
fi

mkdir -p $PAPEROS_DIR
cp -r . $MACHEWM_DIR

cp $MACHEWM_DIR/scripts/start.sh $MACHEWM_START_SCRIPT
chmod +x $MACHEWM_START_SCRIPT
