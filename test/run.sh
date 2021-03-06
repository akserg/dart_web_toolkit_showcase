#!/bin/bash

set -e

###############
# Type Analysis
###############

echo "Analyse code..."

output=$(dartanalyzer web/src/*.dart 2>&1)
results=$?

if [ "$results" -ne 0 ]; then
    exit 1
else
   echo "Passed analysis."
fi

############
# Unit Tests
############

#echo "DumpRenderTree test/index.html"
#results=`DumpRenderTree test/index.html 2>&1`

#echo "------------------"
#echo "$results"
#echo "------------------"

#echo "$results" | grep CONSOLE

#echo $results | grep 'unittest-suite-success' >/dev/null

#echo $results | grep -v 'Exception: Some tests failed.' >/dev/null

