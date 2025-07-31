variable "ami"{
    type = string 
    description = "Our preferred ami"
}
variable "instancetype"{
    type = string 
    description = "Our preferred instance type"
}
variable "subnetid"{
    type = string 
    description = "Our preferred subnet where we need to launch our machine"
}
variable "count"{
    type = string 
    description = "Our preferred count of ec2 instance"
}
variable "env"{
    type = string 
    description = "env name"
}