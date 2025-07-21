variable "instance_names" {
  type        = map
  default     = {
    db = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}


variable "common_tags" {
  type        = map
  default     = {
    
    project =  "expense"
    environment = "dev"
    terraform = true
  }
}

variable "host_zone_id" {
  type = string 
  default = "Z0833177C6NOVV0HITFC"
}

variable domain_name {
  type        = string
  default     = "78skedar.online"
  
}
