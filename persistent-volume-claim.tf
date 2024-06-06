resource "kubernetes_persistent_volume_claim_v1" "mq_pv_claim" {
  metadata {
    name = "mq-pv-claim"
    labels = {
      app = "mosquitto"
    }
  }

  spec {
    access_modes       = ["ReadWriteOnce"]
    storage_class_name = "ebs-sc"
    resources {
      requests = {
        storage = "2Gi"
      }
    }
  }
}
