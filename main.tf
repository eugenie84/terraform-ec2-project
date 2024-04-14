# this is a main code

# Create a VPC
resource "aws_vpc" "default_vpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "default_vpc"
    }
}

# Launch an Amazon linux2 ec2
resource "aws_instance" "terraform-ec2" {
    ami                  = "ami-089313d40efd067a9"
    instance_type        = "t3.large"
    key_name             = "terraform_key"
    iam_instance_profile = "augclass-ssm"

    tags = {
        Name = "terraform-ec2"
    }
}

