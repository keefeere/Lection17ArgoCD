resource "kubernetes_persistent_volume" "host_path_volume" {
  metadata {
    name = "es-test-volume"
  }
  spec {
    capacity = {
      storage = "5Gi"
    }
    access_modes = ["ReadWriteOnce"]
    persistent_volume_source {
      host_path {
        path = "/tmp/es-vol"
        type = "DirectoryOrCreate"
      }
    }
  }
}