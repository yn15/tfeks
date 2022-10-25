resource "kubernetes_persistent_volume_claim" "ns-diary__pvc-diary" {
  metadata {
    name = "database"
  }
  spec {
    access_modes = ["ReadWriteMany"]
    resources {
      requests = {
        storage = "10Gi"
      }
    }
    volume_name = kubernetes_persistent_volume.ns-diary__pv-diary.metadata.0.name
  }
}