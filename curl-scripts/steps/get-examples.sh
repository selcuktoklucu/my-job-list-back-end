curl "http://localhost:4741/tasks" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
