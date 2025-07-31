variable "vpc_cidr"{
    type = string
    description = "CIDR of VPC is passed here"
}

variable "env"{
    type = string
    description = "We give the type of env here"
}
variable "mysubnet_cidr"{
    type = string
    description = "CIDR of VPC is passed here"
}
variable "subnetaz"{
    type = string
    description = "We give our availability zone here"
}