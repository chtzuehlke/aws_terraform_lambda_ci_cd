#!/bin/bash

URL=$1

$(dirname "$0")/http_get_expect_response.sh $URL "Hallo welt"
