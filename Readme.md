# Terraform commands

```bash
 terraform apply -var-file terraform-dev.tfvars -auto-approve
 terraform destroy -var-file terraform-dev.tfvars -auto-approve
 terraform plan -var-file terraform-dev.tfvars 


 ```
 ```bash
 terraform apply -var-file terraform-dev.tfvars -auto-approve

 ```
 

- auto approve to avoid the yes prompt

## Defaults values

- override the values in the terraform-dev.tfvars

## Type variables

- type defs (string, number, list)

use list or object to define the variables

## Environment variables

export TF_VAR_variable_name=value to define global variables

## Access key and secret key

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



<!-- # resource "aws_route_table" "myapp-route-table" {
#   #which VPC this route table belongs to
#   vpc_id=aws_vpc.myapp-vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.myapp-igw.id

#   }
#   tags = {
#     Name : "${var.env_prefix}-rtb"
#   }
  
# }

# resource "aws_route_table_association" "a-rtb-subnet" {
#   subnet_id = aws_subnet.myapp-subnet-1.id
#   route_table_id = aws_route_table.myapp-route-table.id
  
# } -->