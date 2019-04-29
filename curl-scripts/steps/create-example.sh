#!/bin/bash
NAME='step4_for_task4secondd' CLR='blueByUserToTassecondk4' URL='forTask4' TID=4
curl "http://localhost:4741/steps" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "step": {
      "name": "'"${NAME}"'",
      "color": "'"${CLR}"'",
      "url": "'"${URL}"'",
      "task_id": "'"${TID}"'"
    }
  }'

echo
