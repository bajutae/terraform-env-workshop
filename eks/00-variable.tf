
variable "region" {
  description = "The region to deploy the cluster in, e.g: us-east-1"
}

variable "name" {
  description = "Name of the cluster, e.g: seoul-dev-demo-eks"
}

variable "kubernetes_version" {
  default = "1.14"
}

variable "allow_ip_address" {
  description = "List of IP Address to permit access"
  type        = list(string)
  default     = []
}

variable "workers" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type        = list(string)
  default     = []
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

variable "instance_type" {
  default = "m5.large"
}

variable "mixed_instances" {
  type    = list(string)
  default = ["c5.large", "r5.large"]
}

variable "enable_monitoring" {
  default = true
}

variable "ebs_optimized" {
  default = true
}

variable "volume_type" {
  default = "gp2"
}

variable "volume_size" {
  default = "32"
}

variable "min" {
  default = "1"
}

variable "max" {
  default = "5"
}

variable "on_demand_base" {
  default = "1"
}

variable "on_demand_rate" {
  default = "30"
}