# Terraform CI Validation

![Terraform CI](https://github.com/harsh01032004/terraform-ci-validation/actions/workflows/terraform-ci.yml/badge.svg)

A GitHub Actions pipeline that automatically checks Terraform code on every push.

## What the pipeline does
1. `terraform fmt -check -recursive` fails the build if the code is not formatted correctly.
2. `terraform init -backend=false` downloads the AWS provider without needing a remote backend.
3. `terraform validate` checks that the configuration is syntactically valid.

## Files
- `.github/workflows/terraform-ci.yml`: the pipeline definition
- `provider.tf`: AWS provider configuration
- `main.tf`: a sample S3 bucket used as the code being checked

No AWS credentials are needed, because the pipeline never creates resources.
