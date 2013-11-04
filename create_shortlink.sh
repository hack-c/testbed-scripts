curl -i -X POST \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: 7wy41u' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
    "serial_number":null,
    "callback_uri":"https://acmeinc.com/pos/3/userscan/", 
    "description":"QR sticker for cash register 3"
}' \
https://merchanttestbed.appspot.com/merchant/v1/shortlink/
