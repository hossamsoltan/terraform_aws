resource "aws_instance" "terraform_bastion_instance" {
  ami           = "ami-0230bd60aa48260c6" # Specify your desired AMI
  instance_type = "t2.micro"
  key_name      = aws_key_pair.terraform_key.key_name # Use the key pair created below
  subnet_id              = module.network.public_subnet_id_a
  associate_public_ip_address = true # Assign a public IP address to the bastion instance
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]

  tags = {
    Name = var.env_tag
  }
}