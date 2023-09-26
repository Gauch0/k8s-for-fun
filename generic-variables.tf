variable "aws_region" {
    description = "AWS Resource to be create"
    type = string
    default = "us-west-2"
}

variable "environment" {
    description = "Environment used as a prefix"
    type = string
    default = "dev"
}

variable "prefix"{
    description = "value to be used as a prefix"
    type = string
    default = "bff"
}