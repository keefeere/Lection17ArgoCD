resource "argocd_application" "app_fluentd" {
  metadata {
    name      = "app-of-apps"
    namespace = "argocd"
    
  }

  spec {
    source {
      repo_url        = "https://github.com/keefeere/Lection17ArgoCD.git"
      path           = "apps"
      target_revision = "master"
     }

    destination {
      server    = "https://kubernetes.default.svc"
      namespace = "default"
    }

   sync_policy {
      automated = {
        prune       = true
        self_heal   = true
        allow_empty = true
      }
      # Only available from ArgoCD 1.5.0 onwards
      sync_options = ["Validate=false"]
      retry {
        limit   = "5"
        backoff = {
          duration     = "30s"
          max_duration = "2m"
          factor       = "2"
        }
      }
    }




  }
}