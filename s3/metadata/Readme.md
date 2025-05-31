## create a bucket


```sh
aws s3 mb s3://metadata-fun-ab-12422
```

## mb stands for make bucket


### create a new file

echo "hello mars" > hello.txt


### upload file with metadata

aws s3api  put-object    --bucket metadata-fun-ab-`12421 --key hello.txt  --metdata KeyName