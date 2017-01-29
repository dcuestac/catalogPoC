#!/usr/bin/env bash
curl -XPUT 'http://'$1':9200/catalog' -d '
{
  "mappings": {
    "products": {
      "_all":       { "enabled": false  },
      "properties": {
        "id":{ "type": "text","index": "not_analyzed"},
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
            "address":{ "type": "text"},
            "postal_code":{ "type": "text","index": "not_analyzed"},
            "city":{ "type": "text","index": "not_analyzed"},
            "country":{ "type": "text","index": "not_analyzed"},
            "fax":{ "type": "text"},
            "fiscal_id":{ "type": "text","index": "not_analyzed"},
            "activity":{ "type": "boolean","index": "not_analyzed"}
          }
        },
        "logistical_variable":{"type": "boolean","index": "not_analyzed"},
        "comparable":{"type": "boolean","index": "not_analyzed"},
        "skus":{
          "properties":{
            "id":{ "type": "text","index": "not_analyzed"},
            "ean":{ "type": "text","index": "not_analyzed"},
            "sms10":{ "type": "text","index": "not_analyzed"},
            "image_num":{ "type": "long","index": "not_analyzed"},
            "start_date":{ "type": "long","index": "not_analyzed"},
            "end_date":{ "type": "long","index": "not_analyzed"},
            "active":{"type": "boolean","index": "not_analyzed"},
            "tax":{ "type": "double","index": "not_analyzed"},
            "price":{ "type": "double","index": "not_analyzed"},
            "currency":{ "type": "text","index": "not_analyzed"},
            "purchase_state":{"type": "boolean","index": "not_analyzed"},
            "online_exclusive":{"type": "boolean","index": "not_analyzed"},
            "click_collect":{"type": "boolean","index": "not_analyzed"},
            "isp":{ "type": "text","index": "not_analyzed"},
            "logistical_size":{ "type": "text","index": "not_analyzed"}
          }
        },
        "brand":{
          "properties":{
            "id":{ "type": "text","index": "not_analyzed"},
            "name":{ "type": "text","index": "not_analyzed"},
            "type":{ "type": "text"}
          }
        },
        "measurable_unit":{"type": "text","index": "not_analyzed"},
        "pcb":{"type": "boolean","text": "not_analyzed"},
        "category_code":{"type": "text","index": "not_analyzed"},
        "category_name":{"type": "text","index": "not_analyzed"},
        "product_attrs":{
          "properties":{
            "id":{ "type": "text","index": "not_analyzed"},
            "name":{ "type": "text","index": "not_analyzed"}
          }
        }
      }
    }
  }
}'
