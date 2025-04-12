variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "devops-lab-cluster"
}

variable "vpc_id" {
  description = "VPC ID for EKS"
  type        = string
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}