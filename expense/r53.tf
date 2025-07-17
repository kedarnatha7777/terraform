resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.host_zone_id
  name    = local.record_name
  type    = "A"
  ttl     = 1
  records = local.records_value_ip 
  allow_overwrite = true
}