# Required libraries
require 'aws-sdk-s3'       # AWS SDK for interacting with Amazon S3
require 'pry'              # For debugging (optional, used with `binding.pry`)
require 'securerandom'     # For generating unique file contents

# Get bucket name from environment variable
bucket_name = ENV['BUCKET_NAME']

# AWS region for the S3 bucket
region = 'ca-central-1'

# Output the bucket name to console
puts bucket_name

# Initialize the AWS S3 Client
client = Aws::S3::Client.new(region: region)

# Create a new S3 bucket with the specified name and region
resp = client.create_bucket({
  bucket: bucket_name,
  create_bucket_configuration: {
    location_constraint: region
  },
})

# Generate a random number of files (between 1 and 6)
number_of_files = 1 + rand(6)
puts "number_of_files: #{number_of_files}"

# Loop to create and upload each file
number_of_files.times.each do |i|
  puts "i : #{i}"

  # Generate a filename and path for the file
  filename = "file_#{i}.txt"
  output_path = "/tmp/#{filename}"

  # Write a random UUID into the file
  File.open(output_path, "w") do |f|
    f.write SecureRandom.uuid
  end

  # Upload the file to S3 (fixes included below)
  File.open(output_path, 'rb') do |file|
    client.put_object(
      bucket: bucket_name,
      key: filename,         # Use unique filename as object key
      body: file             # Upload file contents
    )
  end
end


