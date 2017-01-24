#!/usr/bin/env bash
curl -XPUT 'http://'$1':9200/catalog' -d '
{
  "mappings": {
    "products": {
      "_all":       { "enabled": false  },
      "properties": {
        "id_product":{ "type": "text","index": "not_analyzed"},
        "sms6":     { "type": "text","index": "not_analyzed"},
        "section":  { "type": "integer" },
        "family":  	{ "type": "integer" },
        "subfamily":{ "type": "integer" },
        "shortdesc":{ "type": "text","index": "not_analyzed"},
        "long_desc":{ "type": "text"},
        "ecommerce_name":{ "type": "text","index": "not_analyzed"},
        "ecommerce_short_desc":{ "type": "text"},
        "template":{ "type": "text"},
        "nav_categories":{ "type": "text"},"index": "not_analyzed",
        "suplier":{
          "properties":{
            "code":{ "type": "text","index": "not_analyzed"},
            "name":{ "type": "text","index": "not_analyzed"},
            "description":{ "type": "text"},
            "address":{ "type": "text"}
          }
        },
        "logistical_variable":{"type": "boolean","index": "not_analyzed"},
        "comparable":{"type": "boolean","index": "not_analyzed"},
        "suplier":{
          "properties":{
            "ean":{ "type": "text","index": "not_analyzed"},
            "sms10":{ "type": "text","index": "not_analyzed"},
            "image_num":{ "type": "long","index": "not_analyzed"},
            "start_date":{ "type": "long","index": "not_analyzed"},
            "end_date":{ "type": "long","index": "not_analyzed"},
            "active":{"type": "boolean","index": "not_analyzed"},
            "iva":{ "type": "long","index": "not_analyzed"},
            "price":{ "type": "long","index": "not_analyzed"}

          }
        }
      }
    }
  }
}'
