# Define a string variable for the AWS region
variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

# Define a variable for the EC2 instance type
variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

# Define a variable for the AMI ID
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

# Define a variable for a key pair name for SSH access
variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "my-ssh-key"
}

# Define a variable for a list of tags to apply to resources
variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    Name        = "ExampleInstance"
    Environment = "Dev"
  }
}

# Define the provider
provider "aws" {
  region = "us-east-1"  # Specify the AWS region
}

# Define the S3 bucket resource
resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name-12345"  # Change this to your desired bucket name
  acl    = "private"  # Default ACL for the bucket, options include 'private', 'public-read', etc.
  
  # Optionally, add any additional configuration you need
  versioning {
    enabled = true  # Enable versioning to keep versions of objects in the bucket
  }

  lifecycle {
    prevent_destroy = true  # Prevents the bucket from being deleted by Terraform
  }
}

# Outputs to show information about the bucket
output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
