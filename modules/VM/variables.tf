variable "ami_id" {
  type = "string"
}
variable "inst_type" {
  default = "t2.micro"
}
variable "sg_name" {
  type = "string"
}
variable "vpc_id" {
  type = "string"
}
variable "ip_addresses" {
  type = "list"
}
