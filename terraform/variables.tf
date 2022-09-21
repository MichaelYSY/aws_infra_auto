variable "access_key" {
    description = "Access key"
}

variable "secret_key" {
    description = "Secret key"
}

variable "aws_region_name" {
    description = "The AWS region name"
    default = "ap-east-1"
}

variable "env_name" {
    description = "The ENV name"
    default = "michael-lab"
}

variable "ec2_ami_id" {
    description = "The AMI ID of instance(s)"
    default = "ami-0c1d5a98de68acf64"
}

variable "ec2_instance_type" {
    description = "The type of instance(s)"
    default = "t3.micro"
}

variable "key_pair_name" {
    description = "The key pair name of instance(s)"
    default = "michael-lab"
}

variable "subnet_id" {
    description = "The subnet id of instance(s)"
    default = "subnet-093af2e1fc0ba6ea8"
}
