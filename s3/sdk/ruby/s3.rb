require 'aws-sdk-s3'
require 'pry'
require 'securerandom'

bucket_name = ENV['BUCKET_NAME']

puts bucket_name

client = Aws::S3::Client.new


resp = client.create_bucket({
  bucket: "examplebucket", 
  create_bucket_configuration: {
    location_constraint: "eu-west-1", 
  }, 
})
