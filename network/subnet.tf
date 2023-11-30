resource "aws_subnet" "terraform_public_subnet_1a" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  cidr_block              = var.subnet_cidr_blocks[0]
  availability_zone       = "${var.env_region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.env_tag
  }
}

resource "aws_subnet" "terraform_public_subnet_1b" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  cidr_block              = var.subnet_cidr_blocks[1]
  availability_zone       = "${var.env_region}b"
  map_public_ip_on_launch = true

  tags = {
    Name = var.env_tag
  }
}

resource "aws_subnet" "terraform_private_subnet_1a" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  cidr_block              = var.subnet_cidr_blocks[2]
  availability_zone       = "${var.env_region}a"

  tags = {
    Name = var.env_tag
  }
}

resource "aws_subnet" "terraform_private_subnet_1b" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  cidr_block              = var.subnet_cidr_blocks[3]
  availability_zone       = "${var.env_region}b"

  tags = {
    Name = var.env_tag
  }
}
