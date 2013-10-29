curl -X POST \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: xzjs3s' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
  "id":"5",
  "name":"Kasse 5",
  "type":"store"
}' \
https://zvs-test.appspot.com/merchant/v1/pos/
