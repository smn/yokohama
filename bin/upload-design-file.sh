source config.source
curl -X PUT $COUCH_INSTANCE/_design/$1 -d @$WORKING_DIR/designs/$1.json