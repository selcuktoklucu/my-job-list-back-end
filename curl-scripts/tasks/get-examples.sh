# TOKEN=BAhJIiU4ZjRmMzQwZDk3Zjk4MjAxODVkNGU0NTcwNTMwOTRkNgY6BkVG--4cef25d5fe6413c794aabdcd23aca2d0cc7ea398
TOKEN=BAhJIiVmMzVkYzdhNmNjZTY2OWYxNmEzZjYyZTE5OTE5OTUwOQY6BkVG--259ed12768f542c52f5b4a4ab143b775dccc7dd7
curl "http://localhost:4741/tasks" \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
  --include \
