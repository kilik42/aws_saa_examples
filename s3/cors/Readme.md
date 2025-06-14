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


## turn on statuc website hosting

## uploiar our index.html file an dincluea resoruce that owuld be cross orign


### apply a cors policy