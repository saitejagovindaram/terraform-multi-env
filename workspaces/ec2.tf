resource "aws_instance" "roboshop-instances" {
    # count = length(var.roboshop_instances)
    ami = data.aws_ami.centos8.id
    instance_type = "t3.micro" 
    vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  
    tags = {
        Name = local.instance_Name
    }
}