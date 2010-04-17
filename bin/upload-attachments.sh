#!/bin/bash
source config.source
cd $WORKING_DIR/_attachments/
for FILE in *
do
    cd $WORKING_DIR/bin/
    REV=`./get_revision_for.sh _design/analytics`
    cd $WORKING_DIR/_attachments/
    MIME_TYPE=`file --mime --brief $FILE`
    curl -X PUT $COUCH_INSTANCE/_design/analytics/$FILE?rev=$REV -d @$FILE -H "Content-Type: $MIME_TYPE"
done
cd $WORKING_DIR/bin/