stub-fee-group-reference-service
================================

Stub Fee Group Reference and ET Office service used for "Apply to an employment tribunal" development.

## Usage

To obtain a fee group reference and office details do a POST to /1/fgr-office with a post code in the
postcode POST param, e.g.

```
curl -vd 'postcode=SW1 1AA' localhost:9292/1/fgr-office
```

To trigger an error response, make a request with the post code 'ER0 0RR'

```
curl -vd 'postcode=ER0 0RR' localhost:9292/1/fgr-office
```
