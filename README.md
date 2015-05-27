# aws-lambda-docker

## What is this?
The `darnould/aws-lambda` Docker image.

This Docker image has prerequisites for interacting with AWS Lambda via CLI.
 * `awscli`
 * `zip` (for `create-function`)

## Example Usage
```
docker run -v "$PWD:/project" -v "$HOME/.aws/credentials:/root/.aws/credentials" -v "$HOME/.aws/config:/root/.aws/config" darnould/aws-lambda list-functions
```

This example presupposes that you have credentials and config files.
[Environment variables](https://docs.docker.com/reference/run/#env-environment-variables) and AWS CLI flags are alternative options.

Files available under the mounted working directory are available for use within the container (e.g. for `create-function`).

