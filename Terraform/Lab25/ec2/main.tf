resource "aws_instance" "ec2" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  subnet_id = module.Network-module.subnet_id

  tags = {
    Name = "lab24"
  }
}

