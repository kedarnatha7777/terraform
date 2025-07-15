resource "aws_instance" "db" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_id
  tags =  var.tags
}

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_discription
  tags = {
    Name = "allow_ssh"
  }
   ingress {
    from_port        = var.opening_port
    to_port          = var.opening_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
   
  }

  egress {
    from_port        = var.egress_port
    to_port          = var.egress_port 
    protocol         = var.egress_protocol  # for all protocols 
    cidr_blocks      = var.cidr_blocks
    
  }

}

