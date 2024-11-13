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
