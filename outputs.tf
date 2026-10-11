output "ec2_coip_pool_lookup_id" {
  description = "Map of id values across all ec2_coip_pool_lookup, keyed the same as var.ec2_coip_pool_lookup"
  value       = { for k, v in data.aws_ec2_coip_pool.ec2_coip_pool_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_coip_pool_lookup_arn" {
  description = "Map of arn values across all ec2_coip_pool_lookup, keyed the same as var.ec2_coip_pool_lookup"
  value       = { for k, v in data.aws_ec2_coip_pool.ec2_coip_pool_lookup : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ec2_coip_pool_lookup_filter" {
  description = "Map of filter values across all ec2_coip_pool_lookup, keyed the same as var.ec2_coip_pool_lookup"
  value       = { for k, v in data.aws_ec2_coip_pool.ec2_coip_pool_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ec2_coip_pool_lookup_local_gateway_route_table_id" {
  description = "Map of local_gateway_route_table_id values across all ec2_coip_pool_lookup, keyed the same as var.ec2_coip_pool_lookup"
  value       = { for k, v in data.aws_ec2_coip_pool.ec2_coip_pool_lookup : k => v.local_gateway_route_table_id if v.local_gateway_route_table_id != null && length(v.local_gateway_route_table_id) > 0 }
}
output "ec2_coip_pool_lookup_pool_cidrs" {
  description = "Map of pool_cidrs values across all ec2_coip_pool_lookup, keyed the same as var.ec2_coip_pool_lookup"
  value       = { for k, v in data.aws_ec2_coip_pool.ec2_coip_pool_lookup : k => v.pool_cidrs if v.pool_cidrs != null && length(v.pool_cidrs) > 0 }
}
output "ec2_coip_pool_lookup_pool_id" {
  description = "Map of pool_id values across all ec2_coip_pool_lookup, keyed the same as var.ec2_coip_pool_lookup"
  value       = { for k, v in data.aws_ec2_coip_pool.ec2_coip_pool_lookup : k => v.pool_id if v.pool_id != null && length(v.pool_id) > 0 }
}
output "ec2_coip_pool_lookup_region" {
  description = "Map of region values across all ec2_coip_pool_lookup, keyed the same as var.ec2_coip_pool_lookup"
  value       = { for k, v in data.aws_ec2_coip_pool.ec2_coip_pool_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_coip_pool_lookup_tags" {
  description = "Map of tags values across all ec2_coip_pool_lookup, keyed the same as var.ec2_coip_pool_lookup"
  value       = { for k, v in data.aws_ec2_coip_pool.ec2_coip_pool_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

