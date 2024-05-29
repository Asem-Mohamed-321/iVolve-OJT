resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}



resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table" "routing_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_subnet" "main-subnet" {
  for_each = var.loop_subnets

  availability_zone_id = each.value["az"]
  cidr_block = each.value["cidr"]
  vpc_id     = aws_vpc.vpc.id

}

resource "aws_route_table_association""make_pub"{
  subnet_id = aws_subnet.main-subnet["sub-1"].id
  route_table_id = aws_route_table.routing_table.id

}


