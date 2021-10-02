variable "region" {default = "ap-southeast-2"}
variable "access_key" {default = ""}
variable "secret_key" {default = ""}


variable "tenancy" { default = "default"  }
variable "vpc_cidr" {default = "192.167.0.0/16"}
variable "subnet_cidr" {default = "192.167.1.0/24"}
variable "ec2_count" {default = "1"}
variable "instance_type" {default = "t2.micro"}
variable "ami_id" {default = "ami-0210560cedcb09f07"}
variable "env" {default = "dev"}
variable "component" {default = "web"}


