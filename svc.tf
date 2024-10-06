resource "kubernetes_service_v1" "webapp-service" {
  metadata {
    name = "webapp-service"
  }
  spec {
    selector = {
      app = kubernetes_deployment_v1.frontend.spec[0].template[0].metadata.0.labels.name
    }
    port {
      port        = 8080
      target_port = 80
      node_port=30080
    }

    type = "NodePort"
  }
}
