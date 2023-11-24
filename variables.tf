variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "route_tables" {
  type = list(object({
    name      = string
    vpc_id    = string
    is_igw_rt = bool

    routes = list(object({
      cidr_block = string
      igw_id     = optional(string)
      nat_gw_id  = optional(string)
    }))

    tags = map(string)
  }))
}
