source config.source
REV=`./get_revision_for.sh _design/analytics`
echo "DELETING CURRENT DESIGN" && curl -X DELETE $COUCH_INSTANCE/_design/analytics?rev=$REV
echo "PUTTING NEW DESIGN" && curl -X PUT $COUCH_INSTANCE/_design/analytics -d @$WORKING_DIR/_designs/analytics.json