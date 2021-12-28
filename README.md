# Service dependencies

Terraform module for creating service dependencies such as IAM role and ECR repo. 

## Example usage

```
module "api" {
  source = "git::https://github.com/Chia-Explorer/service-dependencies?ref=1.0.0"

  repo_name = local.ecr_repo_name
  role_name = local.api_role_name

  immutable = false
  scan_on_push = true
}


resource "aws_iam_role_policy" "api" {
  role   = module.api.iam_role_name

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [{
      "Effect": "Allow",
      "Action": [
        "dynamodb:*"
      ],
      "Resource": "${aws_dynamodb_table.api.arn}"
    }]
}
POLICY
}
```