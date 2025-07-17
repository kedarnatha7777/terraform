/* locals {
  record_name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  records_value_ip = [aws_instance.expense[count.index] == "frontend" ? aws_instance.expense[count.index].public_ip : aws_instance.expense[count.index].private_ip]
  
} */
