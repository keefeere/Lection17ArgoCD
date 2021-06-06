resource "kubectl_manifest" "argo_cd_appofapps" {
    yaml_body = <<YAML
aapiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: appofapps
  namespace: argocd
spec:
  project: default
  source:
    repoURL: hhttps://github.com/keefeere/Lection17ArgoCD.git
    targetRevision: HEAD
    path: apps
  destination:
    server: https://keefeere.tk:6443
    namespace: argocd
YAML
}
