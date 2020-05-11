module "prod-machine" {
  source = "../modules/VM"
  ami_id = "ami-9978f6ee"
  vpc_id = "vpc-844475e2"
  inst_type = "t2.micro"
  ip_addresses = ["2a04:cec0:11d2:7080:541f:f5a7:93bb:2869/128"]
  sg_name = "allow http prod"

}
