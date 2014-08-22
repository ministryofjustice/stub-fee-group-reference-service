stub-fee-group-reference-service
================================

Stub service fee group reference service used for "Apply to an employment tribunal" development.

## Usage

To obtain a fee group reference do a POST to /1/new_claim with a post code in the
postcode POST param, e.g.

```
curl -vd 'postcode=SW1 1AA' localhost:9292/1/new_claim
```

To trigger an error response, make a request with the post code 'ER0 0RR'

```
curl -vd 'postcode=ER0 0RR' localhost:9292/1/new_claim
```
