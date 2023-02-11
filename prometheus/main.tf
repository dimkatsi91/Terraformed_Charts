resource "kubernetes_namespace" "monitoring_ns" {
  metadata {
    annotations = {
      name = var.monitoring_ns_name
    }
    labels = var.monitoring_ns_labels
    name   = var.monitoring_ns_name
  }
}


resource "helm_release" "prometheus" {
  name       = "prometheus"
  chart      = "prometheus-community/prometheus"
  namespace  = var.monitoring_ns_name
  repository = var.prometheus_repo
  version    = "19.3.3"

  depends_on = [
    kubernetes_namespace.monitoring_ns
  ]

  # values = [
  #   "${file("values.yaml")}"
  # ]
}
