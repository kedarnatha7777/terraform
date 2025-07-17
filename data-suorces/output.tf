
output "ami_info" {
  value       = data.aws_ami.expense.id
}
output "image_id" {
    value = data.aws_ami.expense.image_id
}

output "image_location" {
  value       =  data.aws_ami.expense.image_location
    
}

output "vpc_id_info" {
  value       = data.aws_vpc.hello
}

output "cide_block_vpc" {
    value = data.aws_vpc.hello.cidr_block
}

 