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
module "digitalocean_infrastructure" {
  source = "git::https://github.com/your-username/digitalocean-terraform-wrapper.git"

  # Droplet settings
  droplet_count     = 2
  droplet_size      = "s-1vcpu-1gb"
  region            = "nyc3"
  ssh_keys          = ["your-ssh-key-id"]

  # VPC settings
  vpc_name          = "my-vpc"
  vpc_description   = "VPC for my project"

  # Load Balancer settings
  enable_load_balancer = true
  load_balancer_name   = "my-lb"

  # DNS settings
  domain_name       = "example.com"
}
