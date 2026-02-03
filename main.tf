provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "terraform_ec2" {
  ami           = "ami-09a9858973b288bdd" # Ubuntu AMI
  instance_type = "t3.micro"

  tags = {
    Name = "Nithin-Terraform-Server"
  }
}