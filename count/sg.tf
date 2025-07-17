resource "aws_instance" "db" {
  count = length(var.instance_name)
  ami           = var.ami_id
  instance_type = var.instance_name[count.index] == "db" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags =  merge(
    var.common_tag,
    {
      Name = var.instance_name[count.index]
      module =var.instance_name[count.index]
    }
  )
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

