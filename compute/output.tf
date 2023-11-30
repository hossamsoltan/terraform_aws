output "terraform_bastion_instance_ip" {
  value = aws_instance.terraform_bastion_instance.public_ip
}
