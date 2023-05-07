# Terraform 0.11 and earlier



## Upgrade issues

[bitbucket pipelines - "Invalid legacy provider address" error on Terraform - Stack Overflow](https://stackoverflow.com/questions/65396812/invalid-legacy-provider-address-error-on-terraform)

    For AWS: terraform state replace-provider registry.terraform.io/-/aws registry.terraform.io/hashicorp/aws


[Custom variable validation error despite enabling experiment · Issue #24147 · hashicorp/terraform · GitHub](https://github.com/hashicorp/terraform/issues/24147)

    must be in the same module that contains the validations
    terraform {
        experiments = [variable_validation]
    }