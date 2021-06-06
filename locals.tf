locals {
  kube_host                            = "https://keefeere.tk:6443"
  kube_config                          = "~/.kube/config"
  # helm_gitlab_version                  = "0.23.0"
  # helm_prometheus_operator_version     = "12.3.0"
  helm_argocd_version                  = "3.6.5"
  gitlab_helm_repository               = "https://charts.gitlab.io"
  prometheus_community_helm_repository = "https://prometheus-community.github.io/helm-charts"
  argocd_helm_repository     = "https://argoproj.github.io/argo-helm"
}