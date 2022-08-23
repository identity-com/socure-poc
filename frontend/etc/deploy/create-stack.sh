# Create a new stage on AWS
#
# This only needs to be done once per stage
#
# Usage: create-stack.sh dev|preprod|prod
#
# Requirements:
#
# An existing Cloudfront Access Identity (Cloudformation cannot create these)
# An SSL Certificate registered on AWS Certificate Manager
# A hosted zone registered on AWS Route53

set -e
set -u

STAGE=$1

# the ARN of the *.identity.com certificate in prod
#PROD_ACCOUNT_CERTIFICATE_ARN="arn:aws:acm:us-east-1:146055947386:certificate/23b59743-d806-4899-ab04-9a807238a4d4"
PROD_ACCOUNT_CERTIFICATE_ARN="??"
# the ARN of the *.identity.com certificate in dev
DEV_ACCOUNT_CERTIFICATE_ARN="arn:aws:acm:us-east-1:159876458955:certificate/aa27de1d-f254-4953-9f55-73c2543825ee"

[[ $STAGE = "prod" ]] && ACCESS_IDENTITY="?" || ACCESS_IDENTITY="?"
[[ $STAGE = "prod" ]] && HOSTED_ZONE_ID="?" || HOSTED_ZONE_ID="Z012078129CDW83TJ2O5Q"
[[ $STAGE = "prod" ]] && CERTIFICATE_ARN="${PROD_ACCOUNT_CERTIFICATE_ARN}" || CERTIFICATE_ARN="${PROD_ACCOUNT_CERTIFICATE_ARN}"

[[ $STAGE = "prod" ]] && DOMAIN_PREFIX="verifier" || DOMAIN_PREFIX="verifier-${STAGE}"
PROJECT="SocureVerifier"
WEBSITE_NAME="${DOMAIN_PREFIX}.identity.com"

aws cloudformation create-stack --stack-name ${DOMAIN_PREFIX}-identity-com \
  --template-body file:///$PWD/secure-cloudfront-s3-website.yml \
  --parameters \
  ParameterKey=CloudFrontOriginPath,ParameterValue=/"${STAGE}" \
  ParameterKey=S3BucketName,ParameterValue=${WEBSITE_NAME} \
  ParameterKey=WebsiteAddress,ParameterValue=${WEBSITE_NAME} \
  ParameterKey=TlsCertificateArn,ParameterValue="${CERTIFICATE_ARN}" \
  ParameterKey=CloudFrontAccessIdentity,ParameterValue="${ACCESS_IDENTITY}" \
  ParameterKey=HostedZoneID,ParameterValue="${HOSTED_ZONE_ID}" \
  --tags \
  Key=project,Value=${PROJECT} \
  Key=owner,Value="William Brooks" \
  Key=contact,Value=william@identity.com
