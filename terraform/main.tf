resource "docker_network" "network"{
        name    =       "red1"
}

resource "docker_image" "web-image"{
        name    =       "${var.nombre_web}"
        build{
                context         =       "../src/back"
                dockerfile      =       "Dockerfile"
        }
}
resource "docker_image" "api-image"{
        name    =       "${var.nombre_api}"
        build{
                context         =       "../src/api"
                dockerfile      =       "Dockerfile"
        }
}


resource "docker_container" "web-image"{
        name    =       "${var.nom re_web}-${var.entorno}"
        image   =       docker_image.web-image.image_id
        ports{
                internal        =       80
                external        =       var.puerto_web
        }
        networks_advanced{
                name    =       docker_network.network.name
        }
}
resource "docker_container" "api-image"{
        name    =       "${var.nombre_api}-${var.entorno}"
        image   =       docker_image.api-image.image_id
        ports{
                internal        =       3000
                external        =       var.puerto_api
        }
        networks_advanced{
                name    =       docker_network.network.name
        }
}
resource "docker_container" "db-image"{
        name    =       "${var.nombre_db}-${var.entorno}"
        image   =       "postgres:latest"
        env = [
                "POSTGRES_USER=userr",
                "POSTGRES_PASSWORD=p4ssword",
                "POSTGRES_DB=infra"
        ]
        ports{
                internal        =       5432
                external        =       var.puerto_db
        }
        networks_advanced{
                name    =       docker_network.network.name
        }
}