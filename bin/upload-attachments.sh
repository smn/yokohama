#!/bin/bash
source config.source
REV=`./get_revision_for.sh _design/analytics`
cd $WORKING_DIR/_attachments/
for FILE in *
do
    curl -X PUT $COUCH_INSTANCE/_design/analytics/$FILE?rev=$REV -d @$FILE
done
cd $WORKING_DIR/bin/