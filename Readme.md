# terraform commands

terraform apply -var-file terraform-dev.tfvars -auto-approve

- auto approve to avoid the yes prompt

## defaults values

- override the values in the terraform-dev.tfvars

## type variables

- type defs (string, number, list)

use list or object to define the variables

## environment variables

export TF_VAR_variable_name=value to define global variables

## access key and secret key

set the variables in aws config file so that you dont expose your keys if pushed to github

```bash
export AWS_ACCESS_KEY_ID=<your access key></your>
export AWS_SECRET_ACCESS_KEY=<your secret key></your/>
```

```bash
# check if the variables are set in the terminal
env | grep AWS
```

The above approach is not the most efficient way to set the variables.

if you close the terminal and open it again, the variables are not set.

use ```aws configure``` to set the variables in aws config file is the best way to set the variables but have aws cli installed.
