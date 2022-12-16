
provider "aws" {
    region     = "us-west-1"
    access_key = "********************"
    secret_key = "*****************************"
  } 
    
resource "aws_instance" "v1"   {
    ami                    = "ami-0a1a70369f0fce06a "
    instance_type          = "t2.micro"
    key_name               = "Key1"
    monitoring             = true
    vpc_security_group_ids = ["sg-03e456d69cfd31fbf"]
    subnet_id              = "subnet-0de457a23671a7fba"
    tags = {
      Name = "v1"
    }
  }
  

  