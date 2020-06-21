#!/bin/bash

URL=$1
EXPECTED_RESPONSE=$2

RESPONSE=$(curl -s $URL)

if [ "$EXPECTED_RESPONSE" == "$RESPONSE" ]; then
    echo "Expected response from $URL"
    true
else
    echo "Unexpected response from $URL. Expected: '$EXPECTED_RESPONSE'. Received: '$RESPONSE'."
    false
fi

#Print outcome: echo $?
