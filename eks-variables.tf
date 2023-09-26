variable "cluster_name" {
    description = "The name of the EKS cluster"
    type = string
    default = "eks-cluster"
}

variable "cluster_service_ipv4_cidr"{
    description = "The CIDR block to assign Kubernetes service IP addresses from"
    type = string
    default = null
}

variable "cluster_version" {
    description = "The desired Kubernetes version"
    type = string
    default = null
}

variable "cluster_endpoint_private_access" {
    description = "Amazon EKS private API server endpoint is enabled"
    type = bool
    default = false
}

variable "cluster_endpoint_public_access" {
    description = "Amazon EKS public API server endpoint is enabled"
    type = bool
    default = true
}

variable "cluster_enpoint_access_public_cidrs" {
    description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled"
    type = list(string)
    default = ["0.0.0.0/0"]
}
