output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.terraform_vpc.id
}

output "vpc_cidr_block" {
  description = "cidr of the created VPC"
  value       = aws_vpc.terraform_vpc.cidr_block
}

output "public_subnet_id_a" {
  description = "IDs of the created subnets"
  value       = aws_subnet.terraform_public_subnet_1a.id
}

output "public_subnet_cidr_a" {
  description = "cidr of the created subnets"
  value       = aws_subnet.terraform_public_subnet_1a.cidr_block
}

output "public_subnet_id_b" {
  description = "IDs of the created subnets"
  value       = aws_subnet.terraform_public_subnet_1b.id
}

output "public_subnet_cidr_b" {
  description = "cidr of the created subnets"
  value       = aws_subnet.terraform_public_subnet_1a.cidr_block
}

output "private_subnet_id_a" {
  description = "IDs of the created subnets"
  value       = aws_subnet.terraform_private_subnet_1a.id
}

output "private_subnet_cidr_a" {
  description = "cidr of the created subnets"
  value       = aws_subnet.terraform_private_subnet_1a.cidr_block
}

output "public_private_id_b" {
  description = "IDs of the created subnets"
  value       = aws_subnet.terraform_private_subnet_1b.id
}

output "public_private_cidr_b" {
  description = "cidr of the created subnets"
  value       = aws_subnet.terraform_private_subnet_1b.cidr_block
}