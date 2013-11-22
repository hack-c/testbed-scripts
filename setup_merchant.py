import requests, json

merchant_id = "qa87bt"
merchant_user = "ch"
headers = {
	'Accept': 'application/vnd.mcash.api.merchant.v1+json',
	'Content-Type': 'application/json',
	'X-Mcash-Merchant': merchant_id,
	'X-Mcash-User': merchant_user,
	'Authorization': 'SECRET supersecret'
}

print "creating a POS with pos_id '1'..."
payload = {
    "id": "1",
    "name": "Kasse 1",
    "type": "store"
}

r = requests.post(
    'https://merchanttestbed.appspot.com/merchant/v1/pos/',
    data=json.dumps(payload),
    headers=headers
)


print "creating a shortlink..."
payload = {
    "callback_uri": "https://acmeinc.com/pos/3/userscan/",
    "description": "QR sticker for cash register 3"
}
 
r = requests.post('https://merchanttestbed.appspot.com/merchant/v1/shortlink/', data=json.dumps(payload), headers=headers)

shortlink_id = r.json()['id']


print "creating a ledger..."
payload = {
    "currency": "NOK",
    "description": "Ledger for Kasse 1"
}
  
r = requests.post('https://merchanttestbed.appspot.com/merchant/v1/ledger/', data=json.dumps(payload), headers=headers)

ledger_id = r.json()['id']


print "requesting auth for a payment..."
payload = {
    "customer": merchant_id + "-alice",
    "pos_id": "1",
    "pos_tid": "2",
    "action": "auth",
    "currency": "NOK",
    "amount": "100.00",
    "additional_amount": "0",
    "additional_edit": False,
    "allow_credit": False,
    "ledger": ledger_id,
    "expires_in": 21600,
    "text": "Thanks for your business here at Acme Inc! \nYour payment is being processed.",
    "display_message_uri": "https://www.acmeinc.com/pos/3/display/",
    "callback_uri": "https://www.acmeinc.com/pos/3/payment/h93d458qo4685/"
}
   
r = requests.post(
    'https://merchanttestbed.appspot.com/merchant/v1/payment_request/', 
    data=json.dumps(payload),
    headers=headers
)

tid = r.json()['id']


print "accepting payment..."
payload = {"submit": "Pay"}
r = requests.post('https://merchanttestbed.appspot.com/testbed/merchant/{merchant_id}/txn/{tid}/pay/'.format(merchant_id=merchant_id, tid=tid), data=json.dumps(payload))


print "capturing payment..."
payload = {
    "action": "capture",
    "ledger": ledger_id,
    "display_message_uri": "https://www.acmeinc.com/pos/3/display/",
    "callback_uri": "https://www.acmeinc.com/pos/3/payment/h93d458qo4685/"
}

r = requests.put(
    'https://merchanttestbed.appspot.com/merchant/v1/payment_request/{tid}/'.format(tid=tid), 
    data=json.dumps(payload),
    headers=headers
)


print "getting current open report..."
r = requests.get('https://merchanttestbed.appspot.com/merchant/v1/ledger/{ledger_id}/'.format(ledger_id=ledger_id), headers=headers)
print r.json()
open_report_uri = r.json()['open_report_uri']


print "closing report..."
payload = {"callback_uri": "https://www.amalgamatedwidget.com/pos/1/callback/"}
  
r = requests.put(
    open_report_uri, 
    data=json.dumps(payload), 
    headers=headers
)





