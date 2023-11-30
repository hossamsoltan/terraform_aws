resource "aws_security_group" "allow_ssh_and_port_3000" {
  vpc_id = module.network.vpc_id
  name   = "allow-ssh-and-port-3000"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.network.vpc_cidr_block] # Allow SSH from VPC CIDR block only
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [module.network.vpc_cidr_block] # Allow port 3000 from VPC CIDR block only
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
  }
}