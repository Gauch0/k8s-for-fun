# AWS EC2 INSTANCE TERRAFORM OUTPUTS
# BASTION - HOST

output "ec2_bastion_public_instance_ids" {
    description = "List of IDs of instances"
    value       = module.ec2_public.id
}

output "ec2_bastion_eip" {
    description = "List of Elastic IPs created for AWS NAT Gateway"
    value       = aws_eip.bastion_eip.public_ip
}