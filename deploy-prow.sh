#!/bin/bash

set -x

kubectl create secret generic hmac-token --from-file=hmac=tokens/hmac.token
kubectl create secret generic oauth-token --from-file=oauth=tokens/oauth.token

kubectl apply -f https://raw.githubusercontent.com/kubernetes/test-infra/master/prow/cluster/starter.yaml
