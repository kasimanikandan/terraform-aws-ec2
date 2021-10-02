resource "aws_instance" "ec2_instance" {
  count = "${var.ec2_count}"
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"

  user_data = file("${path.module}/user_data/startup.sh")

  tags = {
    Name = "EC2 instance"
    Env="${var.env}"
    Component="${var.component}"
  }
}