variable "entorno" {
  type        = string
  description = "Nombre del entorno (localhost o dev)"
}
variable "prefijo_nombre" {
  type        = string
  description = "Prefijo para los nombres de los contenedores"
}

variable "puerto_frontend" {
  type        = number
}
variable "puerto_backend" {
  type = number
}

variable "puerto_db" {
  type = number
}