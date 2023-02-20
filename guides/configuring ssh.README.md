# Configuring SSH

When using Terragrunt, you will often reference terraform modules located in github using an SSH protocol. For doing that, being able to communicate with GitHub using SSH protocol is necessary.

<br>

## Test if your computer is already configured
Run the following command from your terminal:
```
ssh -T git@github.com
```

If you receive a response such as this, that means your configuration is correct:
```
 Hi USERNAME! You've successfully authenticated, but GitHub does not
 provide shell access.
```

If the connection failed, follow the step in [this guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) for creating a new SSH key.

## **Note**
If while testing your ssh connection, you get the following error:
```
bash-5.0# ssh -T git@github.com
/root/.ssh/config: line 3: Bad configuration option: usekeychain
/root/.ssh/config: terminating, 1 bad configuration options
bash-5.0# 
```

Then remove the `UseKeychain yes` line from your `.ssh/config` file. So it will look as follows:
```
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
```