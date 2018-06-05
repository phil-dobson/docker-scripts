#!/usr/bin/env bash
# Tweaked version of https://github.com/mesosphere/aws-cli/blob/1.14.5/aws.sh that supports setups where the AWS CLI
# assumes a role via an assigned profile instance.

set -o errexit
set -o nounset
set -o pipefail

# enable interruption signal handling
trap - INT TERM

AWS_DEFAULT_REGION="eu-west-2"

docker run --rm \
	-e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" \
	-v "$(pwd):/project" \
	mesosphere/aws-cli \
	"$@"
