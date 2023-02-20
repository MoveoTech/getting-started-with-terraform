# Installing Terraform
The fastest & and most recommended way of installing terraform, is by running a docker image with terraform installed on it

The docker image is called *alpine/terragrunt*. The official image page is available in [this link](https://hub.docker.com/r/alpine/terragrunt)

**The command for running this image is:**

```
docker run -ti --rm -v $HOME/.aws:/root/.aws -v ${HOME}/.ssh:/root/.ssh -v `pwd`:/apps alpine/terragrunt:0.12.16 bash
```
<br>

### **Important Notes:**
1. You don't have to pull this image in advance. By running this command, docker will look for this image locally, and pull it if needed.
2. The command above will copy the `.aws` folder from your computer into the container's volume, that means that your aws profile will be available within the container, **including the default aws profile**
3. The command above will copy the `.ssh` folder from your computer into the container's volume, you will need ssh for referencing terraform modules in GitHub when you run terragrunt. For more details, see [Configuring SSH](./configuring%20ssh.README.md)