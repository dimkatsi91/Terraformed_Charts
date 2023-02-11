variable "monitoring_ns_labels" {

  description = "Labels for the monitoring namespace"
  type        = map(string)
  default = {
    "stack"  = "monitoring"
    "status" = "enabled"
  }
}

variable "monitoring_ns_name" {
  description = "The name of the monitoring ns"
  type        = string
  default     = "monitoring-ns"
}

variable "prometheus_repo" {
  description = "The Prometheus repository"
  type        = string
  default     = "https://prometheus-community.github.io/helm-charts"
}

