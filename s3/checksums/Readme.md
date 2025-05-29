##create a new s3 bucket

``` md
aws s3 mb s3://checksums-examples-ab-2342
```

## create a file that we will do a checksum on

```
echo "hello mars" >myfile.txt
```

## get a checksum of a file for md5

md5sum myfile.tx

## ffc23c95ab2816c07713c164e62fa3c5  myfile.txt

## upload out fiel and look at it etag

```
aws s3 cp myfile.txt s3://checksums-examples-ab-2342
aws s3api head-object --bucket checksums-examples-ab-2342 --key myfile.txt
```
