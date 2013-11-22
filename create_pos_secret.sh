curl -i -X PUT \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: 3d8yfm' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
  "name":"Kasse 1 UPDATE",
  "type":"store"
}' \
https://merchanttestbed.appspot.com/merchant/v1/pos/1/
