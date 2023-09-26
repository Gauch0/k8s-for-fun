#VPC Input Variables

variable "vpc_name" {
    description = "Name of the VPC"
    type = string
    default = "myvpc"
}

variable "vpc_cidr_block" {
    description = "VPC CIDR Block"
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_public_subnets" {
    description = "Public Subnets"
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_private_subnets" {
    description = "Private Subnets"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_database_subnets" {
    description = "Database Subnets"
    type = list(string)
    default = ["10.0.151.0/24", "10.0.152.0/24"]
}

variable "vpc_create_database_subnet_route_table" {
    description = "Create Database Subnet Route Table"
    type = bool
    default = true
}

variable "vpc_enable_nat_gateway" {
    description = "Enable NAT Gateway for Private Subnets outbound Communication"
    type = bool
    default = true
}

variable "vpc_single_nat_gateway" {
    description = "Single NAT Gateway for all Private Subnets"
    type = bool
    default = true 
}