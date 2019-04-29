ID=3 TITLE=updatedTitle DSC=updatedDescription DDATE=2023-04-23 TOKEN=BAhJIiVmYTNjYmVjZmNkYTQ1MWRmZTA0NzNmYjc4ZjE3OWE5NwY6BkVG--d5015cdb5c62af71236f3a85b79dd419ef7e4ebf
curl --include --request PATCH http://localhost:4741/tasks/${ID} \
--header 'content-type: application/json' \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "task": {
    "title": "'"${TITLE}"'",
    "description": "'"${DSC}"'",
    "due_date": "'"${DDATE}"'"
  }
}'
# then controller
