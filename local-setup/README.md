# Configuring Git

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
