# TOKEN=BAhJIiU4ZjRmMzQwZDk3Zjk4MjAxODVkNGU0NTcwNTMwOTRkNgY6BkVG--4cef25d5fe6413c794aabdcd23aca2d0cc7ea398
TOKEN=BAhJIiVkMTNlM2VkZDEyODZmYThjYTVhYTM4MGIwZWVkOGJlYQY6BkVG--b43e860bf07b6276d33f1aacc471ba28403f1ff8
curl "http://localhost:4741/tasks" \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
  --include \
