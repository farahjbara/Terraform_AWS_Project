variable "ami_id" {
  description = "AMI ID for the bastion host"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the bastion host"
  type        = string
}

variable "key_name" {
  description = "Key name for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the bastion host"
  type        = string
}
