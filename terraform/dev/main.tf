provider "aws" {
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

module "dev_env_vpc" {
  source = "../modules/vpc"
  vpc_cidr = "${var.vpc_cidr}"
  tenancy = "${var.tenancy}"
  vpc_id = "${module.dev_env_vpc.vpc_id}"
  subnet_cidr = "${var.subnet_cidr}"
}


module "dev_env_ec2" {
  source = "../modules/ec2"
  ec2_count = "${var.ec2_count}"
  instance_type = "${var.instance_type}"
  ami_id = "${var.ami_id}"
  subnet_id = "${module.dev_env_vpc.subnet_id}"
  env ="${var.env}"
  component = "${var.component}"
}