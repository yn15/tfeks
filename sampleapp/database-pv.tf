resource "kubernetes_persistent_volume" "ns-diary__pv-diary" {
  metadata {
    name = "terraform-example"
  }
  spec {
    capacity = {
      storage = "10Gi"
    }
    access_modes = ["ReadWriteMany"]
    persistent_volume_source {
      vsphere_volume {
        volume_path = "/absolute/path"
      }
    }
  }
}