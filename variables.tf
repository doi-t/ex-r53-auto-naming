data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

variable "ami_owners" {
  default = ["self", "amazon", "aws-marketplace"]
}

variable "resource_prefix" {
  default = "ex-r53-auto-naming"
}

variable "s3_bucket_name" {
  default = "ex-r53-auto-naming"
}

variable "cidr" {
  default = "10.40.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.40.1.0/24"
}

variable "root_block_device_type" {
  default = "gp2"
}

variable "root_block_device_size" {
  default = "8"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "cpu_credit_specification" {
  description = "The credit option for CPU usage. Can be 'standard' or 'unlimited'."
  default     = "standard"
}

variable "key_name" {}
variable "your_public_ip" {}

variable "health_check_grace_period" {
  default = "600"
}

variable "desired_task_count" {
  default = "1"
}

variable "desired_capacity" {
  default = "1"
}

variable "min_size" {
  default = "1"
}

variable "max_size" {
  default = "1"
}

variable "enabled_metrics" {
  default = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupPendingInstances",
    "GroupStandbyInstances",
    "GroupTerminatingInstances",
    "GroupTotalInstances",
  ]

  type = "list"
}

variable "detailed_monitoring" {
  default = false
}