#!/usr/bin/python
import json
import sys
# read json from stdin
document = json.loads("".join(sys.stdin.readlines()))
# check if we've gotten a keyword to read
if sys.argv[1:]:
    # print it
    kw = sys.argv[1]
    print document[kw]
