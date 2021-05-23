# Terraform GCP Secret Manager
This repo contains Terraform resource module for creating a secret store on Google Cloud Platform. 

This module is available in [Datatonic Terraform Registry](https://registry.terraform.io/namespaces/teamdatatonic) 

## Prerequisites
- [Terraform](https://tfswitch.warrensbox.com/) 
- [Commitizen](https://github.com/commitizen/cz-cli)
- [precommit](https://pre-commit.com/)

### Local Setup 
- install pre-commit: `brew install pre-commit`.
- install the git hook scripts: `pre-commit install`.

## Usage
You can go to the examples folder for module usage, the usage of the resource modules could be like this in your own main.tf file:

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | =0.14.9 |
| google | 3.66.1 |
| google-beta | 3.66.1 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | (Optional) Description of the secret store. | `string` | `null` | no |
| environment | (Optinal) The environment where the secret store will be created. | `string` | `""` | no |
| project\_id | (Required) The ID of the project where the secret store will be created. | `string` | n/a | yes |
| region | (Required) Region of secret manager. | `string` | n/a | yes |
| secret\_manager\_config | Configuration of the secret store and secret IAM to be created. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| secret\_name | The id of the secret manager. Format: projects/{{project}}/secrets/{{secret\_id}} |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

### Contributing 
When committing code, use [Commitizen](https://github.com/commitizen/cz-cli).
This then allows us to setup semantic versioning using [Semantic Release](https://github.com/semantic-release/semantic-release) in CICD pipeline.

To install commitizen:
```bash
npm install -g commitizen
```
From now on, when commiting code, instead of `git commit`, run `cz -s`
