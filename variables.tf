variable "aws_access_key" {
	description = "Access key for AWS account"
	default = "AKIA5XXP33KIZMO472NS"
}

variable "aws_secret_key" {
	description = "Secret for AWS account"
	default = "q+eJ2eaKl0qFa7z6hTf2chCFxO0mPFOnw7Lq90gZ"
}

variable "aws_region" {
	description = "The region name to deploy into"
	default = "us-east-1"
}

variable "aws_key_fingerprint" {
	description = "Fingrprint of your SSH key"
	default = "c1:53:56:73:41:52:d2:48:7f:47:08:e4:29:2e:62:e5:f4:f2:ce:e1"
}

variable "aws_key_name" {
	description = "SSH key name"
	default = "vockey"
}

variable "nomad_node_instance_size" {
	description = "EC2 instance type/size for Nomad nodes"
	default = "t3.small"
}

variable "nomad_node_ami_id" {
	description = "AMI ID to use for Nomad nodes"
	default = "ami-0c2b8ca1dad447f8a"
}

variable "nomad_node_count" {
  description = "The number of server nodes (should be 3 or 5)"
  type        = number
  default 	  = 3
}

variable "allowed_ip_network" {
	description = "Networks allowed in security group for ingress rules"
	type = HCL
	default = ["0.0.0.0/0"]
}

variable "az_map" {
	type = map

	default = {
		0 = "a"
		1 = "b"
		2 = "c"
	}
}