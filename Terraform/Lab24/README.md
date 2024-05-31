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
asem@asem-virtual-machine:~/Terraform/Lab24$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v5.51.1

Terraform has been successfully initialized!
.
.
commands will detect it and remind you to do so if necessary.

```

### - Run " terraform apply " command to create an excution plan :
output should be like this :
```
asem@asem-virtual-machine:~/Terraform/Lab24$ terraform plan

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

Plan: 10 to add, 0 to change, 0 to destroy.
```

### - Run " terraform apply " command to apply the changes in the excution plan
the output should be like this:
```
asem@asem-virtual-machine:~/Terraform/Lab24$ terraform apply

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
Plan: 10 to add, 0 to change, 0 to destroy.

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

Apply complete! Resources: 10 added, 0 changed, 0 destroyed.

```

### - Check your AWS enviironment
#### vpc:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/0186adbe-b78e-4ef4-b9a7-62b9dc8fcb27">

#### subnets:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/a84e78b2-313e-4210-ad8f-850f4f1fe7ec">

#### route tables:
public route table
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/866c2260-220c-4b95-8e0c-b64be6412f9d">
private route table
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/4b7d6636-0bb2-4533-b38d-bde11784618d">

#### internet gateway:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/26e63f1d-9678-4d3b-9f41-aaf4d7bdd40d">

#### EC2instance:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/82a46faa-b051-4007-b9b5-67843923c945">

#### RDS databases:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/3dff21e7-1e3c-4022-a5b8-6c2118a568c0">

### - Make sure to run " terraform ddestroy " command to terminate and deleter the resources you provisioned
the output should be like this:
```
asem@asem-virtual-machine:~/Terraform/Lab24$ terraform destroy
aws_vpc.vpc: Refreshing state... [id=vpc-07a43722cbeca8dd2]
aws_db_instance.rds[1]: Refreshing state... [id=db-IDUOKVV6EY7AXNWOCJPC2IK32E]
aws_db_instance.rds[0]: Refreshing state... [id=db-GAFA3ZXD4YTNKYT3LICF6UHNXY]
.
.
output omitted ....
..
Plan: 0 to add, 0 to change, 10 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

 Enter a value: yes
.
.
output omitted......
.
Destroy complete! Resources: 10 destroyed.
```

