resource "kubectl_manifest" "argo_cd_appofapps" {
    yaml_body = <<YAML
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: app-of-apps
  namespace: argocd
spec:
  project: default
  source:
    repoURL: 'https://github.com/keefeere/Lection17ArgoCD.git'
    targetRevision: master
    path: apps
  destination:
    server: https://kubernetes.default.svc
    namespace: default
YAML
}

