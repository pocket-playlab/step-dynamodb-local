#!/bin/bash

set -e

if [ ! -n "$WERCKER_DYNAMODB_LOCAL_PORT" ]; then
    export WERCKER_DYNAMODB_LOCAL_PORT=8000
fi

cd $WERCKER_STEP_ROOT
wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest -O dynamodb_local.tar.gz
tar xfz dynamodb_local.tar.gz
cd $(tar tfz dynamodb_local.tar.gz | sed -n "1s/^\([^/]\+\).\+\$/\1/p")
java -Djava.library.path=DynamoDBLocal_lib -jar DynamoDBLocal.jar -port $WERCKER_DYNAMODB_LOCAL_PORT -inMemory &
