module "network" {
  source = "./network" # the path of network module
}

module "compute" {
  source = "./compute" # the path of network module
}

output "terraform_bastion_pub_ip" {
    value = module.compute.terraform_bastion_instance_ip  
}