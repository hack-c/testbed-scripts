curl -i -X POST \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: oglqib' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
  "id":"1",
  "name":"Kasse 1",
  "type":"store"
}' \
https://merchanttestbed.appspot.com/merchant/v1/pos/
