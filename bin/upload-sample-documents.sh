#!/bin/bash
source config.source
for file in $WORKING_DIR/sample-documents/*
do
    curl -X POST $COUCH_INSTANCE -d @$file
done
