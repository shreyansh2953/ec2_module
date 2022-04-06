provider "aws" {
  version = "~> 3.0"
  region = "us-east-1"
}


module "my_module" {
    source = "../module"

    my_vpc_id = var.my_vpc_id
    my_ami = var.my_ami
    my_instance_type = var.my_instance_type
    my_public_subnet_id = var.my_public_subnet_id
    my_pub_key = var.my_pub_key
    
    
    
}

output "my-output" {
    value = module.my_module.ec2_public_ip
  
}