resource "aws_instance" "roboshop-instances" {
    count = length(var.roboshop_instances)
    ami = data.aws_ami.centos8.id
    instance_type = var.roboshop_instances[count.index] == "mongodb" ? "t2.small" : "t3.micro" 
    vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  
    tags = merge(var.tags, {Name = var.roboshop_instances[count.index]})
}
