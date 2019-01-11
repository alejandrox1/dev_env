# Configuring your local workstation
## Configuring Git

Use the following commands to configure Git on your workstation:
```
git config --global user.email "your@email.com"
git config --global user.name "username"
```

In our case we want to use `vim` as our editor so we will do:
```
git config --global core.editor "vim"
```

Lastly, if you want to store you credentials (these will be base64 encoded and
stored in your home folder):
```
git config --gloabl credential.helper store
```

For a it more security, you should enable 2FA on your account and use this
command instead:
```
git config --gloabl credential.helper cache
```
This will by default, keep your credentials in memory for some 15 minutes.



## Configuring your bash prompt
In the current directory you will find a file name `bash_prompt` this file is
based off 
[Jessie Frazelle's bash prompt](https://github.com/jessfraz/dotfiles/blob/master/.bash_prompt)

### Linux
To add the customized prompt add the file to your `~/.bashrc` file:
```
source ~/.bash_prompt`
```

Alternatively, you can `cp bashrc ~/.bashrc`. The included `bashrc` file will
also have some defaults for `grep` and for `bash-completion`.

### Mac
In Mac, there is no need for the `~/.basrc` file. Instead, you will need to
source the prompt from your `~/.bash_profile` file.

### Bash completion
#### Linux
```
sudo apt-get update -y && sudo apt-get -y install bash-completion
```

### Mac
Simply run `./mac-bash-completion.sh`.

## Useful aliases
### MAC
If you are using ITerm2 then you may not be able to distinguish files from
directories from your default `ls`. To fix this add the following alias to your
`~/.bash_profile`:
```
export LSCOLORS="ExFxCxDxCxegedabagacad"
alias ls='ls -FG'
```

This will somewhat emulate a Debian terminal.
For more info on the `$LSCOLORS` environment variable see 
[How do I get different colors for directories, etc. in iTerm2?](https://apple.stackexchange.com/questions/282185/how-do-i-get-different-colors-for-directories-etc-in-iterm2)



# Configuring VIM
## [pathogen.vim](https://github.com/tpope/vim-pathogen)
Manage your `runtimepath` with ease. 
In practical terms, pathogen.vim makes it super easy to install plugins and 
runtime files in their own private directories.

### [VIM Hashicorp tools](https://github.com/hashivim/vim-hashicorp-tools)
* `Terraform`
* `Consul`
* `Vagrant`
* `Packer`
* `Vault project` etc.
