# GCP authentication file
variable "gcp_auth_file" {
  type = string
  description = "GCP authentication file"
}

# define GCP project name
variable "app_project" {
  type = string
  description = "GCP project name"
}

# define application name
variable "app_name" {
  type = string
  description = "Application name"
}

# define application domain
variable "app_domain" {
  type = string
  description = "Application domain"
}

# define application environment
variable "app_environment" {
  type = string
  description = "Application environment"
}

variable "app_node_count" {
  type = string
  description = "Number of servers to build"
}

# maximum number of VMs for load balancer autoscale
variable "lb_max_replicas" {
  type        = string
  description = "Maximum number of VMs for autoscale"
  default     = "4"
}

# minimum number of VMs for load balancer autoscale
variable "lb_min_replicas" {
  type        = string
  description = "Minimum number of VMs for autoscale"
  default     = "1"
}

# number of seconds that the autoscaler should wait before it starts collecting information
variable "lb_cooldown_period" {
  type        = string
  description = "The number of seconds that the autoscaler should wait before it starts collecting information from a new instance"
  default     = "60"
}
