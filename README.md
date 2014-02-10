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

# Changelog

## 0.0.1

- initial release
