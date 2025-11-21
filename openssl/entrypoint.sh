#!/bin/bash

set -e

PRIV_KEY="/data/private.pem"
PUB_KEY="/data/public.pem"

if [ -f "${PRIV_KEY}" ]; then
   echo "${PRIV_KEY} exists."
else
   openssl genpkey -algorithm Ed25519 -out ${PRIV_KEY}
fi

if [ -f "${PUB_KEY}" ]; then
   echo "${PUB_KEY} exists."
else
   openssl pkey -in ${PRIV_KEY} -pubout -out ${PUB_KEY}
fi
