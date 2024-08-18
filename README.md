# DigitalOcean Droplet Terraform Module

## Overview

This Terraform module is designed to simplify the provisioning of DigitalOcean Droplets. It handles the creation and configuration of Droplets within a specified VPC and supports customization through various input variables.

## Features

- Provision DigitalOcean Droplets with specified configurations.
- Integrate with existing VPCs.
- Customize settings such as SSH keys, environment, and project name.

## Usage

### Example

```hcl
module "droplet" {
  depends_on    = [module.vpc]
  source        = "github.com/easyweb-devops/terraform-digital_ocean_instance-droplet"
  do_sshKey     = var.do_sshKey
  environment   = var.environment
  project_name  = var.project_name
  server        = var.server
  vpc_id        = module.vpc.vpc_id
  sudo_password = var.sudo_password
}
```

## Apply the Terraform Configuration

```bash
terraform init
terraform apply -var-file="xxx.tfvars" -var "do_sshKey=~/.ssh/xxx" -var "do_token=xxx"
```

## Inputs

| Name          | Description                                                                 | Type   | Default | Required |
|---------------|-----------------------------------------------------------------------------|--------|---------|----------|
| do_sshKey     | Path to the SSH key to use for the Droplet.                                 | string |         | yes      |
| environment   | The environment in which the Droplet is being created.                      | string |         | yes      |
| project_name  | The name of the project in which the Droplet is being created.             | string |         | yes      |
| server        | The name of the Droplet.                                                   | string |         | yes      |
| vpc_id        | The ID of the VPC in which the Droplet is being created.                    | string |         | yes      |
| sudo_password | The password for the sudo user on the Droplet.                             | string |         | yes      |