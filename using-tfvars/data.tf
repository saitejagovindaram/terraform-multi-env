data "aws_ami" "centos8" {
  most_recent      = true  # based on created date
  owners = [ "973714476881" ]

  filter {
    name   = "name"
    values = ["*Centos-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
}