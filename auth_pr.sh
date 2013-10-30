curl -i -X POST \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: iq0mul' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
"customer": "iq0mul-alice",
"pos_id": "3",
"pos_tid": "2",
"action": "auth",
"currency": "NOK",
"amount": "100.00",
"additional_amount": "0",
"additional_edit": false,
"allow_credit": false,
"ledger": "f7tu7as8zexadtbef7q0xb0k1i9jt2yr",
"expires_in": 21600,
"text": "Thanks for your business here at Acme Inc! \nYour payment is being processed.",
"display_message_uri": "https://www.acmeinc.com/pos/3/display/",
"callback_uri": "https://www.acmeinc.com/pos/3/payment/h93d458qo4685/"
}' \
https://merchanttestbed.appspot.com/merchant/v1/payment_request/
