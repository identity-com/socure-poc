#!/usr/bin/env bash
set -e
set -u

if [ "${STAGE}" == "prod" ]; then
  DISTRIBUTION=EMWE186ES689R
  BUCKET=socure-demo.identity.com
elif [ ${STAGE} == "preprod" ]; then
  DISTRIBUTION=???
  BUCKET=???
elif [ ${STAGE} == "dev" ]; then
  DISTRIBUTION=???
  BUCKET=???
fi

npx deploy-aws-s3-cloudfront --non-interactive --react --bucket ${BUCKET} --distribution ${DISTRIBUTION}
