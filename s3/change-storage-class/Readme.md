## create a  bucket

aws s3 mb s3://class-fun-ab-63465343

## create a file

echo "hello world" >hello.txt

aws s3 cp hello.txt s3://class-fun-ab-63465343

## CLEAN UP
aws s3 rm s3://class-fun-ab-63465343/hello.txt
aws s3 rb s3://class-fun-ab-63465343