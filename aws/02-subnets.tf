resource "aws_subnet" "moodle-subnet-1a" {
  vpc_id                              = aws_vpc.moodle-vpc.id
  availability_zone                   = "sa-east-1a"
  cidr_block                          = "10.0.1.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    "Name" = "moodle-subnet-1a"
  }
}

resource "aws_subnet" "moodle-subnet-1b" {
  vpc_id                              = aws_vpc.moodle-vpc.id
  availability_zone                   = "sa-east-1b"
  cidr_block                          = "10.0.2.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    "Name" = "moodle-subnet-1b"
  }
}

resource "aws_subnet" "moodle-subnet-1c" {
  vpc_id                              = aws_vpc.moodle-vpc.id
  availability_zone                   = "sa-east-1c"
  cidr_block                          = "10.0.3.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    "Name" = "moodle-subnet-1c"
  }
}