## creata  bucket
``sh
aws s3 mb s3://cors-fun-ac-34444476
``
## change block public access
``sh
aws s3api put-public-access-block \
    --bucket amzn-s3-demo-bucket \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true"

``

### create a bucket policy
aws s3api put-bucket-policy --bucket cors-fun-ac-34444476 --policy file://bucket-policy.json


## turn on statuc website hosting

aws s3api put-bucket-website --bucket cors-fun-ac-34444476 --website-configuration file://website.json

## upload our index.html file an dincluea resoruce that owuld be cross orign

aws s3 cp index.html cors-fun-ac-34444476 

## get the website endpoint for s3
aws s3 website s3://amzn-s3-demo-bucket/ \
    --index-document index.html \
    --error-document error.html

### apply a cors policy
aws mediastore put-cors-policy \
    --container-name CorsSampleContainer \
    --cors-policy file://bucket-policy.json