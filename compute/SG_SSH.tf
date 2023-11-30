module "network" {
  source = "../network" # the path of network module
}

resource "aws_security_group" "ssh_sg" {
  vpc_id = module.network.vpc_id
  name   = "ssh-sg"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}