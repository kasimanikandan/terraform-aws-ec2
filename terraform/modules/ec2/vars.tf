variable "ec2_count" {}

variable "ami_id" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {}

variable "env" {}

variable "component" {}

variable "startup_script" {}