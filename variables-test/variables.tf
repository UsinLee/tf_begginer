variable "image_id" {
  type = string
}

variable "availability_zone_names" {
  type		= list(string)
  default	= ["ap-northeast-2"]
}

variable "ami_id_maps" {
  type 		= map
  default	= {}
}

variable "default_region" {
  type	= string
}
