# Tutorials

# Get Started - Azure

[Get Started - Azure](https://learn.hashicorp.com/collections/terraform/azure-get-started)

```bash
$ git clone git@github.com:ldynia/terraform-tutorials.git
$ cd terraform-tutorials/azure
```

1. Build Infrastructure - Terraform Azure Example

    [Terraform Azure Example](https://learn.hashicorp.com/tutorials/terraform/azure-build?in=terraform/azure-get-started)

    ```powershell
    # Az login
    ps> az login
    ps> az account set --subscription <subscription_id>
    ps> az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/9d51f818-a66e-4f84-af2a-104e5aee24a5"
    {
    "appId": "xxxxxx-xxx-xxxx-xxxx-xxxxxxxxxx",
    "displayName": "azure-cli-2022-xxxx",
    "password": "xxxxxx~xxxxxx~xxxxx",
    "tenant": "xxxxx-xxxx-xxxxx-xxxx-xxxxx"
    }

    # Set env
    ps> $Env:ARM_CLIENT_ID = "<APPID_VALUE>"
    ps> $Env:ARM_CLIENT_SECRET = "<PASSWORD_VALUE>"
    ps> $Env:ARM_SUBSCRIPTION_ID = "<SUBSCRIPTION_ID>"
    ps> $Env:ARM_TENANT_ID = "<TENANT_VALUE>"

    # Make dir
    ps> New-Item -Path "C:\code\terraform\" -Name "learn-terraform-azure" -ItemType "directory"

    # Commands 101
    ps> terraform init

    ps> terraform fmt
    ps> terraform validate

    ps> terraform plan
    ps> terraform apply

    ps> terraform show
    ps> terraform state list
    ```

1. Change Infrastructure

    [Change Infrastructure](https://learn.hashicorp.com/tutorials/terraform/azure-change?in=terraform/azure-get-started)

    ```powershell
    ps> terraform apply
    ps> terraform state
    ps> terraform state list
    ```

1. Destroy Infrastructure

    [Destroy Infrastructure](https://learn.hashicorp.com/tutorials/terraform/azure-destroy?in=terraform/azure-get-started)

    ```powershell
    ps> terraform destroy
    ```

1. Input Variables
    
    [Define Input Variables](https://learn.hashicorp.com/tutorials/terraform/azure-variables?in=terraform/azure-get-started)

    ```powershell
    ps> terraform apply
    ```

1. Output Variables

    [Query Data with Output Variables](https://learn.hashicorp.com/tutorials/terraform/azure-outputs?in=terraform/azure-get-started)

    ```powershell
    ps> terraform plan
    ps> terraform apply
    ps> terraform refresh
    ps> terraform output resource_group_id
    ps> terraform output resource_group_name
    ```

# CLI

[CLI](https://learn.hashicorp.com/collections/terraform/cli)

```bash
$ cd ../
$ git clone https://github.com/hashicorp/learn-terraform-init
$ cd learn-terraform-init/
```

1. Initialize Terraform Configuration

    [Initialize Terraform Configuration](https://learn.hashicorp.com/tutorials/terraform/init?in=terraform/cli)

    ```powershell
    ps> learn-terraform-init
    ``

1. XXX