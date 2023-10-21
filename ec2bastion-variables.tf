# AWS EC2 Variables

# AWS EC2 Instance Type

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t3a.nano"
}

variable "instance_keypair" {
    description = "The keypair to use for the EC2 instance"
    type = string
    default = "eks-keypair"
}
