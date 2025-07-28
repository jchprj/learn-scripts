# Terraform

```
terraform init
terraform plan
terraform apply
terraform destroy
```

[amazon web services - Error installing provider "aws": openpgp: signature made by unknown entity - Stack Overflow](https://stackoverflow.com/questions/67368339/error-installing-provider-aws-openpgp-signature-made-by-unknown-entity)

    terraform init -verify-plugins=false


## tfenv

[GitHub - tfutils/tfenv: Terraform version manager](https://github.com/tfutils/tfenv)

    git clone https://github.com/tfutils/tfenv.git ~/.tfenv
    ln -s ~/.tfenv/bin/* /usr/local/bin

    tfenv list
    tfenv list-remote
    tfenv install
    tfenv install 0.7.0
    tfenv install latest
    tfenv use 0.7.0
    tfenv use latest
    tfenv uninstall 0.7.0
    tfenv uninstall latest


## Terratest
[GitHub - gruntwork-io/terratest: Terratest is a Go library that makes it easier to write automated tests for your infrastructure code.](https://github.com/gruntwork-io/terratest)


```
terraform init
```

```
terraform plan
```

```
terraform apply
```

```
terraform destroy
```

## Mac ARM issue

[Template v2.2.0 does not have a package available - Mac M1 - Terraform Providers - HashiCorp Discuss](https://discuss.hashicorp.com/t/template-v2-2-0-does-not-have-a-package-available-mac-m1/35099)

    template v2.2.0 does not have a package available for your current platform, darwin_arm64
    Install m1-terraform-provider-helper
    brew install kreuzwerker/taps/m1-terraform-provider-helper
    m1-terraform-provider-helper install hashicorp/template -v v2.2.0

[kreuzwerker/m1-terraform-provider-helper: CLI to support with downloading and compiling terraform providers for Mac with M1 chip](https://github.com/kreuzwerker/m1-terraform-provider-helper?tab=readme-ov-file#installation)

May need to run `m1-terraform-provider-helper activate` after install it.


# References

[terraform plan notifies of changes in infrastructure but also saying No changes - Stack Overflow](https://stackoverflow.com/questions/67666185/terraform-plan-notifies-of-changes-in-infrastructure-but-also-saying-no-changes)