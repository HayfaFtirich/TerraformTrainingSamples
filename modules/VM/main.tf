#Create virtual machine
resource "aws_instance" "main-server" {
    ami = var.ami_id
    instance_type = var.inst_type
    vpc_security_group_ids = [ aws_security_group.sg-for-mainserver.id ]
}

resource "aws_security_group" "sg-for-mainserver" {
  name        = var.sg_name
  description = "Allow inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
  description = "http from myip"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  ipv6_cidr_blocks = var.ip_addresses
  }

  egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
  Name = var.sg_name
  }

}
