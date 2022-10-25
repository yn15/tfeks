resource "kubernetes_service" "ns-diary__service-database" {

  metadata {
    name      = "database"
    namespace = "ns-diary"
  }

  spec {
    selector = {
      "app.kubernetes.io/name" = "database"
    }

    type = "ClusterIP"
    port {
      port        = 8081
      protocol    = "TCP"
      target_port = "3306"
    }
  }

}