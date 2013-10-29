curl -X PUT \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: xzjs3s' \
-H 'X-Mcash-User: ch' \
-H 'Authorization: SECRET supersecret' \
-d '{
"callback_uri": "https://www.amalgamatedwidget.com/pos/1/callback"
}' \
https://zvs-test.appspot.com/merchant/v1/ledger/gwok5na18a4vkndoxhngmt527n2j0kwa/report/0/
