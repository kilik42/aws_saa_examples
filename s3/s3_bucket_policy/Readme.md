## creat3e a new bucket


```sh
aws s3api create-bucket --bucket acl-example-ab-5235 --region us-east-1
```


```sh
### turn off block public accessf for ACLs
aws s3api put-public-access-block \
    --bucket amzn-s3-demo-bucket \
    --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```