curl -i -X POST \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: m1ctuq' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
"currency": "NOK",
"description": "Ledger for Kasse 3"    
}' \
https://merchanttestbed.appspot.com/merchant/v1/ledger/
