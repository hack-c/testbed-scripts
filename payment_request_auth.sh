curl -i -X POST \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: T9oWAQ3FSl6oeITuR2ZGWA' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
"customer": "hqi3ux2l4i8",
"pos_id": "1",
"pos_tid": "h93d458qo4685",
"action": "auth",
"currency": "NOK",
"amount": "100.00",
"additional_amount": "0",
"additional_edit": false,
"allow_credit": false,
"ledger": "8aa9f1e6221b6ffaf8b4",
"timestamp": "2013-09-30 15:35:26",
"expires_in": 21600,
"text": "Thanks for your business here at Acme Inc! \nYour payment is being processed.",
"display_message_uri": "https://www.acmeinc.com/pos/3/display/",
"callback_uri": "https://www.acmeinc.com/pos/3/payment/h93d458qo4685/"
}' \
https://merchanttestbed.appspot.com/merchant/v1/payment_request/
