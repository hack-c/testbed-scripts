curl -X POST \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: xzjs3s' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
"customer": "xzjs3s-alice",
"pos_id": "3",
"pos_tid": "2",
"action": "auth",
"currency": "NOK",
"amount": "100.00",
"additional_amount": "0",
"additional_edit": false,
"allow_credit": false,
"ledger": "gwok5na18a4vkndoxhngmt527n2j0kwa",
"expires_in": 21600,
"text": "Thanks for your business here at Acme Inc! \nYour payment is being processed.",
"display_message_uri": "https://www.acmeinc.com/pos/3/display/",
"callback_uri": "https://www.acmeinc.com/pos/3/payment/h93d458qo4685/"
}' \
https://zvs-test.appspot.com/merchant/v1/payment_request/
