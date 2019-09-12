
#================ Public Subnet ================

resource "aws_subnet" "public-subnet-1" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.aws_region}a"
  cidr_block        = "${var.cidr_block_public-subnet-1}"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-terraform-subnet-1"
  }
}

output "out_public-subnet-1_id" {
  value = "${aws_subnet.public-subnet-1.id}"
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.aws_region}b"
  cidr_block        = "${var.cidr_block_public-subnet-2}"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-terraform-subnet-2"
  }
}

output "out_public-subnet-2_id" {
  value = "${aws_subnet.public-subnet-2.id}"
}

#================ Private Subnet ================

resource "aws_subnet" "private-subnet-1" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.aws_region}a"
  cidr_block        = "${var.cidr_block_private-subnet-1}"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "private-terraform-subnet-1"
  }
}

output "out_private-subnet-1_id" {
  value = "${aws_subnet.private-subnet-1.id}"
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.aws_region}b"
  cidr_block        = "${var.cidr_block_private-subnet-2}"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "private-terraform-subnet-2"
  }
}

output "out_private-subnet-2_id" {
  value = "${aws_subnet.private-subnet-2.id}"
}