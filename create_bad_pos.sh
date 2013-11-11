curl -i -X POST \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: oky93d' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
  "id":"99",
  "name":"Kasse 99",
  "type":"store"
}' \
https://merchanttestbed.appspot.com/merchant/v1/pos/
