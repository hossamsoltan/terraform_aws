resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform_key" # Specify your desired key pair name
  public_key = file("/home/hossam/terra/terraform_aws.pub") # Specify the path to your public key file
}
 
