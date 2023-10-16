variable "region" {
  type = string
  default = "eu-central-1"
}

variable "availability_zone" {
  type = string
  default = "eu-central-1a"
}

variable "cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "publicCIDR" {
  type = list(string)
  default = ["10.0.1.0/24"]
}

variable "environment" {
  type = string
  default = "dev"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_AMI" {
  default = "ami-05d34d340fb1d89e5"
}

variable "allowed_ports" {
  type = list(string)
  default = ["80", "443", "22", "8080"]
}
