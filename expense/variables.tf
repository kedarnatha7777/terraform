#=============Ec2-variables============
variable instance_names {
  type        = list
  default     = ["db","backend","frontend"]
}

variable ami_id {
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

variable common_tages {
  type        = map
  default     =  {
    project = "expense"
    environment = "dev"
    terraform = true 
  }
}
#========= sg-variables============
variable sg_name {
  type        = string
  default     = "allow_expense"
}

variable sg_description {
  type        = string
  default     = "sg fot the expense project "
}

variable ingress_port {
  type        = number 
  default     = 22
}

variable cidr_blocks {
  type        = list
  default     = ["0.0.0.0/0"]
}
variable protocol {
  type        = string
  default     = "tcp"
  
}
variable egress_port {
  type        = number
  default     = 0
}
# =============r53- variables===========
variable domain_name {
  type        = string
  default     = "78skedar.online"
}
variable host_zone_id {
  type        = string
  default     = "Z0833177C6NOVV0HITFC"
}

