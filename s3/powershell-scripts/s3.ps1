Import-Module AWS.Tools.S3

$region = "us-east-1"

$bucketName = Read-Host -Prompt 'Enter the S3 bucket name'

Write-Host "AWS Region: $region"
Write-Host "S3 Bucket: $bucketName"

function BucketExists {
    $bucket = Get-S3bucket -BucketName $bucketName -ErrorAction SilentlyContinue
    return $null -ne $bucket
}


if (-not (BucketExists)) {
    Write-Host "Bucket does not exist"
    New-S3Bucket -BucketName $bucketName -Region $region
} else {
    Write-Host "Bucket already exists"
}


New-S3Bucket = Get-S3Bucket -BucketName $bucketName -Region $region



#create a new file

$fileName = 'myfile.txt'
$fileContent = 'hello world'

Set-Content -Path  $fileName -Value $fileContent

Write-S3Object -BucketName $bucketName -File $fileName -Key fileName