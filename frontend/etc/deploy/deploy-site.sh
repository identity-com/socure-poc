#!/usr/bin/env bash
set -e
set -u

if [ "${STAGE}" == "prod" ]; then
  DISTRIBUTION=E26IVVHGVZDG6G
  BUCKET=socure-poc.identity.com
elif [ ${STAGE} == "preprod" ]; then
  DISTRIBUTION=???
  BUCKET=???
elif [ ${STAGE} == "dev" ]; then
  DISTRIBUTION=???
  BUCKET=???
fi

npx deploy-aws-s3-cloudfront --non-interactive --react --bucket ${BUCKET} --distribution ${DISTRIBUTION}
