step-dynamodb-local
===================

A wercker step for DynamoDB Local

# Options

* `port` (optional, default: `8000`) DynamoDB Local port number.

# Example

```
build:
  steps:
    - dynamodb-local:
        port: 8000
```

# Note

* The build will pass on Wercker if `port: 8000` has been removed from the wercker.yml

# Changelog

## 0.0.3
- `cd $(tar tfz dynamodb_local.tar.gz | sed -n "1s/^\([^/]\+\).\+\$/\1/p")` has been removed because it'll cd out of the current dir and won't work on Wercker

## 0.0.2

- omit in-memory mode

## 0.0.1

- initial release
