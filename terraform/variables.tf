variable "instance_type" {
	default = "t2.micro"
	description = "instance type of servers"
}

variable "region" {
  type    = string
  default = "us-east1"
}

variable "instance_count" {
  default = "2"
  description = "Number of shards"
}
variable "ec2_ami" {
  default = "ami-08c40ec9ead489470"
  description = "AMI Id"
}