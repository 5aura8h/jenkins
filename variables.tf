
variable "user_name" {
    type = string
    default = "saukotha"
}

variable "user_pwd" {
    type = string
    default = "cisco!123"
}

variable "apic_url" {
    type = string
    default = "https://10.48.168.2"

}
variable "tenant_name" {
    type = string
    default = "saukotha5"
}

variable "tenant_description" {
    type = string
    default = "using terraform"
}

variable "vrf_name" {
    type = string
    default = "vrf"
}

variable "bd100_name" {
    type = string
    default = "bd100"
}
variable "bd200_name" {
    type = string
    default = "bd200"
}
