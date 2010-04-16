#!/bin/bash
echo "PUTTING DATABASE $COUCH_DB_NAME"
./create-db.sh
echo "POSTING DATA FILES FROM ./sample-documents/*"
./upload-sample-documents.sh
echo "PUTTING DESIGN FILE"
./upload-design-file.sh analytics