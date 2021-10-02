resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name="main"
  }
}

resource "aws_subnet" "main" {
  cidr_block = "${var.subnet_cidr}"
  vpc_id     = "${var.vpc_id}"

  tags = {
    Name="main"
  }
}

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "subnet_id" {
  value = "${aws_subnet.main.id}"
}