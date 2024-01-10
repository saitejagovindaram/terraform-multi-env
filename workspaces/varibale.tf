variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "fromPort" {
  type = number
  default = 0
}

variable "toPort" {
  type = number
  default = 0
}

variable "internetTraffic" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}


# variable "roboshop_instances" {
#   type = list(string)
#   # default = ["mongodb", "catalogue", "user", "cart", "web", "shipping", "mysql", "rabbitmq", "redis", "payments"]4
# }


variable "select_Environment" {
  type = string
}

