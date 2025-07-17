resource "aws_instance" "expense" {
  count = length(var.instance_names)
  ami                     = var.ami_id
  instance_type           =  var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro" 
  vpc_security_group_ids  = [aws_security_group.allow_expense.id]
 tags = merge(
    var.common_tages,
    {
        Name = var.instance_names[count.index]
        module = var.instance_names[count.index]
    }
 )
}

resource "aws_security_group" "allow_expense" {
  name        = var.sg_name
  description = var.sg_description
 
  ingress {
    from_port        = var.ingress_port
    to_port          = var.ingress_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    
  }
  egress {
    from_port        = var.egress_port
    to_port          = var.egress_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    
  }
}