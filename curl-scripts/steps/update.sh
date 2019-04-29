# ID=2 NAME="step2_name"  CLR='RED' URL='www.ccc.com' TID=1
curl http://localhost:4741/steps/${ID} \
  --request PATCH \
  --include \
  --header 'Content-Type: application/json' \
  --data '{
    "step": {
      "name": "'"${NAME}"'",
      "color": "'"${CLR}"'",
      "url": "'"${URL}"'",
      "task_id": "'"${TID}"'"
    }
  }'
