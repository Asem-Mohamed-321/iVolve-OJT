### - Install AWS CLI:
If you haven't already installed the AWS CLI, you can download and install it from this link:
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

### - Configure AWS CLI:
using the command 
```
aws configure
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/71afcb60-f921-4f6c-98e6-a318e24ccc3b">

### - Create your provider file listing the providers and account you will work with in "provider.tf" file:
```
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
```

### - RUN "terraform init" command to initialize the providers' packages:
output should be like this :
```
asem@asem-virtual-machine:~/Terraform/Lab25$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v5.51.1

Terraform has been successfully initialized!
.
.
commands will detect it and remind you to do so if necessary.

```

### - divide your main file into modules directories .. each directory should have 
#### - main.tf :(contains the blocks used)
#### - output.tf :(contains any output would be used in other modules or any important output you would like to display)
#### - variable.tf :(contains the variables used in the module)
run the "tree" command to see the structure and it should look like this:
```
asem@asem-virtual-machine:~/Terraform/Lab25$ tree .
.
├── ec2
│   ├── main.tf
│   ├── output.tf
│   └── variable.tf
├── main.tf
├── Network-module
│   ├── main.tf
│   ├── output.tf
│   └── variable.tf
├── output.tf
├── provider.tf
├── rds
│   ├── main.tf
│   └── output.tf
├── terraform.tfstate
├── terraform.tfstate.backup
└── variables.tf

3 directories, 14 files

```

### - Run " terraform apply " command to create an excution plan :
output should be like this :
```
asem@asem-virtual-machine:~/Terraform/Lab25$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_db_instance.rds[0] will be created
  + resource "aws_db_instance" "rds" {
      + address                               = (known after apply)
      + allocated_storage                     = 10
      + apply_immediately                     = false
.
.
.
output ommitted..
.
.
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags_all                             = (known after apply)
    }

Plan: 17 to add, 0 to change, 0 to destroy.
```

### - Run " terraform apply " command to apply the changes in the excution plan
the output should be like this:
```
asem@asem-virtual-machine:~/Terraform/Lab25$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_db_instance.rds[0] will be created
  + resource "aws_db_instance" "rds" {
      + address                               = (known after apply)
      + allocated_storage                     = 10
      + apply_immediately                     = false
.
.
output omitted...
.
.
Plan: 17 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes
.
.
output omitted....
.
.
aws_db_instance.rds[1]: Still creating... [6m21s elapsed]
aws_db_instance.rds[1]: Still creating... [6m31s elapsed]
aws_db_instance.rds[1]: Creation complete after 6m34s [id=db-IDUOKVV6EY7AXNWOCJPC2IK32E]

Apply complete! Resources: 17 added, 0 changed, 0 destroyed.

```

### - Check your AWS enviironment
#### vpc
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/2ee06fd8-32ec-4661-bc3c-fb5ac70f7433">

#### subnets
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6d8e7c7a-228b-4f26-a728-7c64be9b454d">

#### route tables
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/8f97a570-afac-4fcd-9639-a234c717dbb0">


#### EC2
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/305c4df4-031d-4fcf-ab32-6b5ce829a17e">


#### RDS databases
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/4d03f6e8-95e6-4846-9a38-301d7c67f7c4">

### - Make sure to run " terraform ddestroy " command to terminate and deleter the resources you provisioned
the output should be like this:
```
asem@asem-virtual-machine:~/Terraform/Lab25$ terraform destroy
aws_vpc.vpc: Refreshing state... [id=vpc-07a43722cbeca8dd2]
aws_db_instance.rds[1]: Refreshing state... [id=db-IDUOKVV6EY7AXNWOCJPC2IK32E]
aws_db_instance.rds[0]: Refreshing state... [id=db-GAFA3ZXD4YTNKYT3LICF6UHNXY]
.
.
output omitted ....
..
Plan: 0 to add, 0 to change, 17 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

 Enter a value: yes
.
.
output omitted......
.
Destroy complete! Resources: 17 destroyed.
```
