variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
}


variable "tags" {
    type = map
    default ={
        name = "db"
        module = "db"
        env = "dev"
        project = "expense "
        terrform = true 
        
    }
}



variable "sg_name" {
    default = "allow_ssh"
    type = string
}

variable "sg_discription" {
    type = string
    default = "Allows ssh only" 
}

variable "opening_port" {
    type = number 
    default = 22 
}

variable "protocol" {
    type = string 
    default = "tcp"
}

variable "cidr_blocks" {
    type = list 
    default = [ "0.0.0.0/0" ]
}

variable "egress_port"{
    type = number
    default = 0
}

variable "egress_protocol" {
    type = string 
    default = "-1"
}