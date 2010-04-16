YOKOHAMA
========

Experimenting with CouchDB & map/reduce. As a sample app I'm doing some stats analysis on really lame data.

If you're interested, here's how to get started where I left off (make sure you've got CouchDB running):

 1. Goto `./bin` and edit `config.source` to check the general configuration 
    vars (should be ok)
 2. Run `./setup.sh` - this will:
    1. Create the database
    2. Post the files in `sample-documents` to it
    3. Put the `analytics.json` design in the database in order to query 
        the data
 3. Go to Futon at http://127.0.0.1:5984/_utils and check the available data
 4. Check the views in the top-right drop down menu, there should be a list of 
    5 custom views under the "analytics" heading. They should return some 
    random collected data based on whatever you provided in 
    "sample-documents".
 5. Check http://127.0.0.1:5984/yokohama/_design/analytics/_view/browsers_versions?group=true for the regular JSON output. Replace `browsers_versions` with one of the other views listed in the drop down menu. Not exactly clear on what "group=true" is needed for but it's explained [here](http://books.couchdb.org/relax/design-documents/views)
 6. If you're feeling very brave then run `stress-upload.sh` in `bin` for a while. It's a while true loop doing `upload-sample-documents.sh`.
 
Some things I've noticed
========================

* Coding javascript in JSON sucks, I now understand why couchapp exists.
* Map/Reduce starts to make more sense after reading http://labs.mudynamics.com/wp-content/uploads/2009/04/icouch.html
* CouchDB is hungry for diskspace. Compacting removes old revisions & all deleted documents. It reduced my db from 42 megs to 6 megs.