# DigitalOcean Terraform Wrapper Module

## Overview

This Terraform module serves as a wrapper for provisioning and managing resources on DigitalOcean. The module simplifies the creation, configuration, and management of DigitalOcean infrastructure by abstracting away the complexities of individual resource definitions. It is designed to be flexible, reusable, and easy to integrate into your existing Terraform workflows.

## Features

- **Simplified Resource Provisioning**: Easily create DigitalOcean resources like Droplets, VPCs, Load Balancers, and more.
- **Reusability**: Leverage pre-configured defaults and override them with custom settings for different environments.
- **Scalability**: Manage resources at scale with minimal effort, whether for development, staging, or production.
- **Customization**: Expose variables to customize the provisioning of resources as per your specific requirements.
- **Best Practices**: Built-in best practices for security, performance, and maintainability.

## Resources Supported

- **Droplets**: Create and manage DigitalOcean Droplets with optional SSH key injection, backups, and monitoring.
- **Block Storage**: Attach and manage block storage volumes for your Droplets.
- **VPC**: Set up Virtual Private Cloud networks for resource isolation and security.
- **Load Balancers**: Provision Load Balancers to distribute traffic across your Droplets.
- **DNS**: Manage DNS records for your domain using DigitalOcean's DNS service.
- **Kubernetes Clusters**: Provision and manage DigitalOcean Kubernetes clusters.

## Usage

### Example

```hcl
module "droplet" {
  depends_on    = [module.vpc]
  source        = "../modules/digital_ocean_modules/droplet"
  do_sshKey     = var.do_sshKey
  environment   = var.environment
  project_name  = var.project_name
  server        = var.server
  vpc_id        = module.vpc.vpc_id
  sudo_password = var.sudo_password
}
```
terraform apply -var-file="xxx.tfvars" -var "do_sshKey=~/.ssh/xxx" -var "do_token=xxx"