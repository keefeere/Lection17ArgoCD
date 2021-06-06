terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      # version = "~> 2.0.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      # version = "~> 2.0.1"
    }    
    kubectl = {
        source  = "gavinbunney/kubectl"
        version = ">= 1.7.0"
    }

    # argocd = {
    #   source = "oboukili/argocd"
    #   version = "1.2.1"
    # }



  }
  required_version = "~> 0.13.6"
}
