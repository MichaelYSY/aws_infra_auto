provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.aws_region_name}"
}

resource "aws_instance" "ec2_instance" {
  ami = "${var.ec2_ami_id}"
  instance_type = "${var.ec2_instance_type}"
  key_name = "${var.key_pair_name}"
  subnet_id = "${var.subnet_id}"
  tags = {
    "Name" = "${var.env_name}"
  }
}

resource "aws_eip" "ec2_eip" {
  instance = aws_instance.ec2_instance.id
  vpc  =  true
  tags = {
    "Name" = "${var.env_name}-eip"
  }
}
