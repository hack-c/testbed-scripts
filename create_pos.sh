curl -i -X POST \
-H 'Accept: application/vnd.mcash.api.merchant.v1+json' \
-H 'Content-Type: application/json' \
-H 'X-Mcash-Merchant: oky93d' \
-H 'X-Mcash-User: ch' \
-H 'Authorization:RSA-SHA1 qxZNSMN9ecnjKEnOpIAWOA6H+03Ll5vIOqm5dYaa/nAxb3HVQMDQyF1YxmGtm5jRrL4G7DAwJoaTlekS2kGtCOKwaO6vyD/ZN0YMn3t4slPHL4bDkj1iXWuZPdy9nVxGQc2DLxndRqdgUiSuPYotsTWJaLSbQuaurOQnQ8SrA3nNzXjw4XN8L1VDy2zCZbf5aB6VS3MXq9CutKtB6n/PpkIDP3SefztTycJDu2oZL8tNB3MqSZMVg5p4HKJprpg0nacZwMbwq8Xf+XR4hubaAt0WiYNUniysoIZVOXnUKSnPcN/ZheftcczexgtsyZEtTqLopXD1K+u4cwjsgdeJng==' \
-d '{
  "id":"5",
  "name":"Kasse 5",
  "type":"store"
}' \
https://merchanttestbed.appspot.com/merchant/v1/pos/
