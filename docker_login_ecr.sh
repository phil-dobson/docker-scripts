#!/usr/bin/env bash
# Fetches a docker login command from aws through the CLI. Assumes that the aws.sh script is executable in the users home directory.
# Supports setups where the AWS CLI assumes a role via an assigned profile instance.

set -o errexit

CMD=$(/home/core/aws.sh ecr get-login --no-include-email)
$CMD
