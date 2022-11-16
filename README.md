Once you generate a personal access token, set it as an environment variable named GITHUB_TOKEN.

``` Bash
$ export GITHUB_TOKEN=
```

Then, create an environment variable named GITHUB_OWNER and set it to your GitHub organization. If you do not specify a Github organization, Terraform will authenticate and manage resources on the access token user's individual user account.

``` Bash
$ export GITHUB_OWNER=
```
