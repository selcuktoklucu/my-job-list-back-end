#!/bin/bash
# TOKEN=BAhJIiVlMjVhNDk1OGM0ZDc2NmUzMDVlNDcyMmQxOTc0NzgwNwY6BkVG--af7dcb4b220c790da390b2608abd3e181868ea1d
curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
