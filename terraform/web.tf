resource "docker_container" "api" {
  name  = "api-dev-${terraform.workspace}"
  image = "lab/api"
  ports {
    internal = 3000
    external = var.api_port
  }
}