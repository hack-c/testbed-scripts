# Changing working directory to the directory of this file
#import os
#os.chdir(os.path.dirname(__file__))

#put the sample private and public keys in the working directory 
#in files called "sample-privkey.pem" and "sample-pubkey.pem"

import base64
import json
from Crypto.Hash import MD5, SHA
from Crypto.PublicKey import RSA
from Crypto.Signature import PKCS1_v1_5


with open('sample-privkey.pem', 'r') as fd:
    signer = PKCS1_v1_5.new(RSA.importKey(fd.read()))
with open('sample-pubkey.pem', 'r') as fd:
    verifier = PKCS1_v1_5.new(RSA.importKey(fd.read()))


method = 'POST'
url = 'https://zvs-test.appspot.com/merchant/v1/pos/'
data = '{"id": "3", "name": "Kasse 3", "type": "store"}'
content_md5 = base64.b64encode(MD5.new(data).digest())

headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'X-Mcash-Merchant': 'qbvxvi',
    'X-Mcash-User': 'chazz',
    'X-Mcash-Timestamp': '2013-10-28 11:54:23',
    'Content-MD5': content_md5,
}

#Make all header names uppercase
headers = {k.upper(): v for k, v in headers.items()}
# Constructing headers string for signature
# Equivalent one-liner:
sign_headers = ''
d = ''
for key, value in sorted(headers.items()):
    if not key.startswith('X-MCASH-'):
        continue
    sign_headers += d + key + '=' + value
    d = '&'

sign_msg = '|'.join([method.upper(), url.lower(), sign_headers, content_md5])

rsa_signature = base64.b64encode(signer.sign(SHA.new(sign_msg)))
rsa_auth_header = 'RSA-SHA1 ' + rsa_signature

# Verification of the signature can be done like this
#assert verifier.verify(SHA.new(sign_msg), base64.b64decode(rsa_signature)), 'Invalid signature'

print """Content-MD5 value is:
{content_md5}

Headers part of signature message is
{sign_headers}

Signature message is
{sign_msg}

Authorization header for RSA-SHA1 is
{rsa_auth_header}""".format(
    content_md5=headers['CONTENT-MD5'], sign_headers=sign_headers, sign_msg=sign_msg, rsa_auth_header=rsa_auth_header
)
