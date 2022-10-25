resource "kubernetes_service" "ns-diary__service-diary" {

  metadata {
    name      = "service-diary"
    namespace = "ns-diary"
  }

  spec {
    selector = {
      "app.kubernetes.io/name" = "app-diary"
    }

    type = "LoadBalancer"

    port {
      port        = 80
      protocol    = "TCP"
      target_port = "35001"
    }
  }

}