provider "aws" {
  region = "us-east-1"
}
//if you dont specify the region what happens 
//resource varaibles 

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string

}
variable "environment" {
  description = "Environment to deploy to"
  type        = string

}
resource "aws_vpc" "development-vpc" {
  cidr_block = var.subnet_cidr_block
  tags = {
    Name : "Development-vpc"
  }
}

resource "aws_subnet" "development-subnet" {
  vpc_id            = aws_vpc.development-vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = "us-east-1a"
  tags = {
    Name : "development-subnet"
  }

}
