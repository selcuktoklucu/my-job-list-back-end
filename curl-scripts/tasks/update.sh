ID=21 TITLE=updatedTitle DSC=updatedDescription DDATE=2023-04-23 TOKEN=BAhJIiVkMTNlM2VkZDEyODZmYThjYTVhYTM4MGIwZWVkOGJlYQY6BkVG--b43e860bf07b6276d33f1aacc471ba28403f1ff8
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
