resource "kubernetes_ingress" "ns-diary__ingress-diary" {
  metadata {
    annotations = { "kubernetes.io/ingress.class" = "alb", "alb.ingress.kubernetes.io/scheme" = "internet-facing", "alb.ingress.kubernetes.io/target-type" = "ip", "alb.ingress.kubernetes.io/listen-ports" = "[{\"HTTP\": 8080}]" }
    name        = "ingress-diary"
    namespace   = "ns-diary"
  }

  spec {

    rule {
      http {
        path {
          path = "/*"
          backend {
            service_name = "service-diary"
            service_port = "80"
          }
        }
      }
    }
  }
}
