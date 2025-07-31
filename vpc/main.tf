resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-env"
  }
}
resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.mysubnet_cidr
  availability_zone = var.subnetaz

  tags = {
    Name = "${var.env}-subnet"
  }
}
output "mysubnetid" {
  value = aws_subnet.mysubnet.id
}
