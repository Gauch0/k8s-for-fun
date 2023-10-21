# VPC Output Values

# VPC ID
output "vpc_id" {
  description = "The ID VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR VPC"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "List private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List public subnets"
  value       = module.vpc.public_subnets
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "A list of availability zones spefified"
  value       = module.vpc.azs
}