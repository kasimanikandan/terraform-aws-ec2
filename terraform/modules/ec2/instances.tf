resource "aws_instance" "ec2_instance" {
  count = "${var.ec2_count}"
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"

  user_data = "${var.startup_script}"

  tags = {
    Name = "EC2 instance"
    Env="${var.env}"
    Component="${var.component}"
  }
}