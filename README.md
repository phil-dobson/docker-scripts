# Docker Scripts
## AWS CLI Wrapper - aws.sh
Runs a command against the AWS CLI, inside the mesosphere/aws-cli container. Relies upon the server being an EC2 instance with a relevant instance profile set up allowing it to assume a role.
Usage: `./aws.sh s3 cp ...`.

## AWS ECR Docker Login - ecr_login.sh
Logs into docker using temporary credentials. Relies upon the server being an EC2 instance with a relevant instance profile set up allowing it to assume a role.
