# Getting Started With Terraform
The purpose of this repo is to provide hands-on examples for using terraform, without previous knowledge required.

Terraform is an open source tool for building, changing, and versioning infrastructure safely and efficiently. In this guide, we will walk through the basics of getting started with Terraform and explain how it can be used to manage infrastructure as code.

<br>

# Table of Contents
1. [Prerequisites](#prerequisites)
2. [Install Terraform](#installing-terraform)
3. [Using this Guide](#using-this-guide)
<br>

---
<br>

## Prerequisites
Before you can start using Terraform, you will need to:

* **Install Terraform** - Jump to [installing terraform](#installing-terraform) section in order to install terraform quickly.

* **Configure AWS in your terminal** - Use the AWS CLI for configuring your default AWS profile. For more details, see [this guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-config).

* **Configure SSH connection with GitHub** - If you intend to use Terragrunt, you will most probably need this.

<br>

---
<br>

## Installing Terraform
The fastest & and most recommended way of installing terraform, is by running a docker image with terraform installed on it

The docker image is called *alpine/terragrunt*. The official image page is available in [this link](https://hub.docker.com/r/alpine/terragrunt)

#### **The command for running this image is:**
<br>

```
docker run -ti --rm -v $HOME/.aws:/root/.aws -v ${HOME}/.ssh:/root/.ssh -v `pwd`:/apps alpine/terragrunt:0.12.16 bash
```
<br>

#### **Important Notes:**
1. You don't have to pull this image in advance. By running this command, docker will look for this image locally, and pull it if needed.
2. The command above will copy the `.aws` folder from your computer into the container's volume, that means that your aws profile will be available within the container, **including the default aws profile**
3. The command above will copy the `.ssh` folder from your computer into the container's volume, you will need ssh for referencing terraform modules in GitHub when you run terragrunt. For more details, see [Configuring SSH](./configuring%20ssh.README.md)

<br>

---
<br>

## Using this Guide

This guide is divided to different examples, each example demonstrates a different Terraform feature.   
Here are the steps for trying out each example:

1. Open your terminal.
2. Run the docker command from the [Install Terraform](#installing-terraform) section.
3. `cd` into the example's directory
4. Run Terraform/Terragrunt commands (depending on the example's code)



