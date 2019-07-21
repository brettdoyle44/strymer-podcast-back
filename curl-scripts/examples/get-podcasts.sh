#!/bin/bash

curl -X GET --include 'https://listen-api.listennotes.com/api/v2/search?q=The%20Voice%20of%20Esports&sort_by_date=0&type=podcast&offset=0&only_in=title&language=English' \
  -H 'X-ListenAPI-Key: dab4d93e79bb4a08b7d91f4402aa7ffc'

echo
