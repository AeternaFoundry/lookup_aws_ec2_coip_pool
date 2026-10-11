data "aws_ec2_coip_pool" "ec2_coip_pool_lookup" {
  for_each = var.ec2_coip_pool_lookup

  local_gateway_route_table_id = each.value.local_gateway_route_table_id
  pool_id                      = each.value.pool_id
  region                       = each.value.region
  tags                         = each.value.tags

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

