resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instancetype
  subnet_id     = var.subnetid
  count         = var.instance_count

  tags = {
    Name = "${var.env}-EC2-${count.index}"
    Env = var.env
  }
}
