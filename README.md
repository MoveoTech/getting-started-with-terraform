# Getting Started With Terraform
The purpose of this repo is to provide hands-on examples for using terraform, without previous knowledge required.

Terraform is an open source tool for building, changing, and versioning infrastructure safely and efficiently. In this guide, we will walk through the basics of getting started with Terraform and explain how it can be used to manage infrastructure as code.

<br>

## Prerequisites
Before you can start using Terraform, you will need to:

**Install Terraform** - Follow [this guide](guides/Installation.README.md) in order to install terraform quickly.

**Configure AWS in your terminal** - Use the AWS CLI for configuring your default AWS profile. For more details, see [this guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-config).

<br>

## Getting Started
**Create a configuration file** - A configuration file is a file that contains the instructions for building and managing your infrastructure. It is written in the HashiCorp Configuration Language (HCL), which is a declarative language designed to be easy to read and write.

**Initialize Terraform** - Run the terraform init command to initialize Terraform and download the necessary plugins.

**Plan the infrastructure** - Run the terraform plan command to see a preview of the infrastructure that will be created.

**Apply the changes** - Run the terraform apply command to apply the changes and create the infrastructure.

## Next Steps
Now that you have the basic workflow down, you can start using Terraform to manage your infrastructure. Here are some suggestions for next steps:

1. Read the Terraform documentation to learn more about the various features and options available.

2. Explore the Terraform Registry to find modules and resources that you can use in your configurations.

3. Check out the Terraform Best Practices guide for tips on how to write efficient and maintainable configurations.

