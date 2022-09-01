resource "aws_iam_role" "ec2-role-cloudwatch" {
  name        = "ec2-role-cloudwatch"
  description = "Allows EC2 instances to call AWS services on your behalf."
  assume_role_policy = jsonencode(
    {
      Version = "2012-10-17"
      Statement = [
        {
          Action = "sts:AssumeRole"
          Effect = "Allow"
          Principal = {
            Service = "ec2.amazonaws.com"
          }
        },
      ]
    }
  )
}