#!/bin/bash
# TITLE='task2_title' DSC='task2_dsc' DDATE='2019-04-21'
# TITLE='Task2_name_byUser2' DSC='RedByUser2' DDATE='2019-10-01' TOKEN="BAhJIiU4ZjRmMzQwZDk3Zjk4MjAxODVkNGU0NTcwNTMwOTRkNgY6BkVG--4cef25d5fe6413c794aabdcd23aca2d0cc7ea398"
curl "http://localhost:4741/tasks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "task": {
      "title": "'"${TITLE}"'",
      "description": "'"${DSC}"'",
      "due_date": "'"${DDATE}"'"
    }
  }'

echo
