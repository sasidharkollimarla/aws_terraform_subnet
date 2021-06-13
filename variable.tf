variable "aws_region" {
  default = "ap-south-1"
}
variable "vpc_id" {
  default = 'vpc-ea1cdf81'
}
variable "cidr_block_public-subnet-1" {
  default = '172.31.2.0/20'
}
variable "cidr_block_public-subnet-2" {
default = '172.31.3.0/20'
}
variable "cidr_block_private-subnet-1" {
default = '172.31.4.0/20'
}
variable "cidr_block_private-subnet-2" {
default = '172.31.5.0/20'
}
