#!/bin/bash
source config.source
for FILE in $WORKING_DIR/sample-documents/*
do
    curl -X POST $COUCH_INSTANCE -d @$FILE
done
