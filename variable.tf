variable "aws_region" {
  default = "us-east-1"
}
variable "vpc_id" {
  default = "vpc-03e1fb62c282fb3b5"
}
variable "cidr_block_public-subnet-1" {
  default = "172.32.64.0/20"
}
variable "cidr_block_public-subnet-2" {
default = "172.32.48.0/20"
}
variable "cidr_block_private-subnet-1" {
default = "172.32.80.0/20"
}
variable "cidr_block_private-subnet-2" {
default = "172.32.32.0/20"
}
