variable "ami" {
    default= "ami-078fe7ff43e10cf8c"
}

variable "instance_type" {
    default= "t3.micro"
}

variable "key_name" {
    default= "terraform"
}

variable "volume_size" {
    default= 8
}

variable "volume_type" {
    default= "gp3"
}

variable "tags"{
    type= map(string)

    default= {
        Name= "webserver"
    }
}