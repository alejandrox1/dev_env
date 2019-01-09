# Setting up your environment for AWS

```
pip install awscli boto boto3
```

```
gem install aws-mfa
```
In ubuntu, if for some reason you get some error about the `libcurl` package
not being available then try this:
```
sudo apt-get install libcurl4 libcurl4-openssl-dev
```

Notice here that we will be auhtenticating through the command-line by using
[`aws-mfa`](https://rubygems.org/gems/aws-mfa/versions/0.3.2).

```
$ aws configure
AWS Access Key ID [None]: xxxxxxxxxxxxxxxxx
AWS Secret Access Key [None]: xxxxxxxxxxxxxxxxxxxx
Default region name [None]: us-east-1
Default output format [None]: json
```
