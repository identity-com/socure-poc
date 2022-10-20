#!/usr/bin/env bash
set -e
set -u

FOLDER="/solana-pay"
SOURCE="./build/"

if [ "${STAGE}" == "prod" ]; then
  DISTRIBUTION=E23FRNHUJ372ZZ
  BUCKET="demo.identity.com"
elif [ ${STAGE} == "preprod" ]; then
  DISTRIBUTION=???
  BUCKET=???
elif [ ${STAGE} == "dev" ]; then
  DISTRIBUTION=???
  BUCKET=???
fi

npx deploy-aws-s3-cloudfront --non-interactive --source ${SOURCE} --bucket ${BUCKET} --destination ${FOLDER} --distribution ${DISTRIBUTION}
