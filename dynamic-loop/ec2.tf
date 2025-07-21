resource "aws_security_group" "allow_NEW_SG" {
  name        = "allow_NEW_SG"
  
  tags = {
    Name = "allow_NEW_SG"
  }
   dynamic  "ingress" {
        for_each = var.inbound_rules 
       content {
    from_port        = ingress.value["port"]
    to_port          = ingress.value["port"]
    protocol         = ingress.value["protocol"]
    cidr_blocks      = ingress.value["allowed_cidr"]
   
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"  # for all protocols 
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

}

