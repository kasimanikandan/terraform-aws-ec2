variable "region" {}
variable "access_key" {}
variable "secret_key" {}

variable "tenancy" { default = "default"  }
variable "vpc_cidr" {default = "192.167.0.0/16"}
variable "subnet_cidr" {default = "192.167.1.0/24"}
variable "ec2_count" {default = "1"}
variable "instance_type" {default = "t2.micro"}
variable "ami_id" {default = ""}
variable "env" {default = "dev"}
variable "component" {default = "web"}

