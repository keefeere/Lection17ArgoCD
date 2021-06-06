resource "kubernetes_namespace" "argocd_namespace" {
  metadata {
    annotations = {
      name = "argocd"
    }

   
    name = "argocd"
  }
}