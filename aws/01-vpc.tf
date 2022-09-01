resource "aws_vpc" "moodle-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
  tags = {
    "Name" = "moodle-vpc"
  }
}

resource "aws_internet_gateway" "moodle-internet-gateway" {
  vpc_id = aws_vpc.moodle-vpc.id

  tags = {
    "Name"   = "moodle-internet-gateway"
    "moodle" = "aws"
  }
}

resource "aws_route" "rt-default-gw" {
  route_table_id         = aws_vpc.moodle-vpc.default_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.moodle-internet-gateway.id
}