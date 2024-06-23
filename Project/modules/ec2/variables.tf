variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
}

variable "key_name" {
  description = "Key name for SSH access"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EC2 instances"
  type        = list(string)
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}
