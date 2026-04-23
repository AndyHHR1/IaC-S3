variable "entorno" {
  type        = string
  description = "Nombre del entorno (localhost o dev)"
}
variable "nombre_web" {
  type        = string
  description = "nombre_web"
}
variable "nombre_api" {
  type        = string
  description = "nombre_api"
}
variable "nombre_db" {
  type        = string
  description = "nombre_db"
}
variable "puerto_web" {
  type        = number
}
variable "puerto_api" {
  type = number
}

variable "puerto_db" {
  type = number
}