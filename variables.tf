variable "rg_name" {
  type = string
}

variable "law_name" {
  type = string
}

variable "location" {
  type = string
}

variable "law_sku" {
  type = string
}

variable "law_retention_days" {
  type = number
}

variable "tags" {
  type = map(string)
}
