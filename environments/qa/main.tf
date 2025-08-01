module "vpc"{
    source = "../../modules/vpc"
    vpc_cidr = "11.0.0.0/22"
    env = "qa"
    mysubnet_cidr = "11.0.1.0/24" 
    subnetaz = "ap-southeast-1a"
}

module "ec2"{
    source = "../../modules/ec2"
    ami = "ami-02c7683e4ca3ebf58"
    instancetype = "t2.medium"
    subnetid = module.vpc.mysubnetid
    count = 1
    env = "qa"
}