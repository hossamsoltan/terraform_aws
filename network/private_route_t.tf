resource "aws_route_table" "terraform_private_route_table_a" {
  vpc_id = aws_vpc.terraform_vpc.id

  tags = {
    Name = var.env_tag
  }
}

resource "aws_route_table" "terraform_private_route_table_b" {
  vpc_id = aws_vpc.terraform_vpc.id

  tags = {
    Name = var.env_tag
  }
}



resource "aws_route_table_association" "terraform_private_association_a" {
  subnet_id      = aws_subnet.terraform_private_subnet_1a.id
  route_table_id = aws_route_table.terraform_private_route_table_a.id
}

resource "aws_route_table_association" "terraform_private_association_b" {
  subnet_id      = aws_subnet.terraform_private_subnet_1b.id
  route_table_id = aws_route_table.terraform_private_route_table_b.id
}
