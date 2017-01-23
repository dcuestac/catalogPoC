#!/usr/bin/env bash
curl -XPUT 'http://'$1':9200/catalog' -d '
{
  "mappings": {
    "products": {
      "_all":       { "enabled": false  },
      "properties": {
        "idproduct":{ "type": "text","index": "not_analyzed"},
        "sms6":     { "type": "text","index": "not_analyzed"},
        "section":  { "type": "integer" },
        "family":  	{ "type": "integer" },
        "subfamily":{ "type": "integer" },
        "shortdesc":{ "type": "text","index": "not_analyzed"}, 
        "longDesc":{ "type": "text"},
        "eCommerceName":{ "type": "text","index": "not_analyzed"},
        "ecommerceShortDesc":{ "type": "text"},
        "template":{ "type": "text"}
      }
    }
}'
