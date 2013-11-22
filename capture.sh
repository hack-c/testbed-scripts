curl -i -X PUT \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: m1ctuq' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
"action": "capture",
"ledger": "99nbgw0znxjqsiqx4qk5ymlr4dahxcpf",
"display_message_uri": "https://www.acmeinc.com/pos/3/display/",
"callback_uri": "https://www.acmeinc.com/pos/3/payment/h93d458qo4685/"
}' \
https://merchanttestbed.appspot.com/merchant/v1/payment_request/1qwggabuntb6vqd5n2fmrmqxu2xyjxiur2i2qf7zffetersog7nmq/
