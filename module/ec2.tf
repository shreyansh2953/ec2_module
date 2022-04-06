terraform {
  required_version = ">=1.00"
}


resource "aws_instance" "ubuntu_ami" {


     ami = var.my_ami 
     instance_type = var.my_instance_type
     subnet_id = var.my_public_subnet_id
      key_name = var.my_pub_key
     security_groups= [aws_security_group.allow_tls.id]    
     

      tags = {
    Name = "my_ubuntu"
  }

}