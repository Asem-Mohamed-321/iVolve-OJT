module "Network-module"{
source = "./Network-module"
}

module "ec2" {
source = "./ec2"
}

module "rds" {
source = "./rds"
}
