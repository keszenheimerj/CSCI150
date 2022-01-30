#!/bin/bash

POSITIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].positive')
TODAY=$(date)
HINCREASE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].hospitalizedIncrease')
DEAD=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].deathIncrease')
TOTALRESULTS=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].totalTestResults')

echo "On $TODAY, there were $POSITIVE positive COVID cases, and an increase of $HINCREASE hospitalized individuals."
echo "There was an increase of $DEAD deaths today, and the total test results sit at $TOTALRESULTS"
