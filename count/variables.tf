variable "instance_names" {
   type = list
   default = ["mongodb","redis","mysql","shipping","cart","catalogue","user","rabbitmq","payment","dispach","web"]
}

variable "ami_id" {
   type = string
   default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
    default = "Z03536141WAKWCUFUQ1W2"
}

variable "domain_name" {
    default = "practicedevopsproject.online"
}