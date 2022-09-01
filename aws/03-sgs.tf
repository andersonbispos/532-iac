resource "aws_security_group" "moodle-dbserver-nsg" {
  description = "Regras de acesso ao dbserver do moodle"
  name        = "moodle-dbserver-nsg"

  vpc_id = aws_vpc.moodle-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "moodle-dbserver-nsg"
    "moodle" = "aws"
  }

}

resource "aws_security_group" "moodle-webserver-ng" {
  description = "Regras de liberacao para servidores de aplicacap"
  name        = "moodle-webserver-ng"

  vpc_id = aws_vpc.moodle-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "moodle-webserver-ng"
    "moodle" = "aws"
  }

}

resource "aws_security_group" "moodle-nfs-nsg" {

  description = "Regras de acesso ao NFS"
  vpc_id = aws_vpc.moodle-vpc.id

  ingress {
    from_port   = 2049
    to_port     = 2049
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags        = {
    "Name"   = "moodle-nfs-nsg"
    "moodle" = "aws"
  }
}