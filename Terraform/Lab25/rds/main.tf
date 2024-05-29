resource "aws_db_instance" "rds" {
  count = 2
  allocated_storage    = 10
  db_name              = "asem${count.index}"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "dbuser"
  password             = "dbpass12345678"
}

