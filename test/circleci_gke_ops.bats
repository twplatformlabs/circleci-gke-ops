# #!/usr/bin/env bats

@test "python3 available" {
  run bash -c "docker exec container-test python --help"
  [[ "${output}" =~ "Options" ]]
}

@test "nodejs available" {
  run bash -c "docker exec container-test node --help"
  [[ "${output}" =~ "Usage: node" ]]
}

@test "bats available" {
  run bash -c "docker exec container-test bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "checkov available" {
  run bash -c "docker exec container-test checkov --help"
  [[ "${output}" =~ "usage: checkov" ]]
}

@test "gcloud available" {
  run bash -c "docker exec container-test gcloud --version"
  [[ "${output}" =~ "Google Cloud SDK" ]]
  [[ "${output}" =~ "gke-gcloud-auth-plugin" ]]
}

@test "kubectl available" {
  run bash -c "docker exec container-test kubectl --help"
  [[ "${output}" =~ "kubectl controls" ]]
}

@test "kind available" {
  run bash -c "docker exec container-test kind --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "helm available" {
  run bash -c "docker exec container-test helm --help"
  [[ "${output}" =~ "helm [command]" ]]
}

@test "pixie available" {
  run bash -c "docker exec container-test px --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "argocd version" {
  run bash -c "docker exec container-test argocd --help"
  [[ "${output}" =~ "argocd [command]" ]]
}

@test "flux version" {
  run bash -c "docker exec container-test flux --help"
  [[ "${output}" =~ "flux [command]" ]]
}

@test "trivy available" {
  run bash -c "docker exec container-test trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}
