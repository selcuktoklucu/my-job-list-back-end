#!/bin/bash
# EMAIL='st2@st.com' PASSWORD='stst'
EMAIL='st@st.com' PASSWORD='stst'
curl "http://localhost:4741/sign-in" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
