output "vpn_connection_routes_id" {
  description = "Map of id values across all vpn_connection_routes, keyed the same as var.vpn_connection_routes"
  value       = { for k, v in aws_vpn_connection_route.vpn_connection_routes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpn_connection_routes_destination_cidr_block" {
  description = "Map of destination_cidr_block values across all vpn_connection_routes, keyed the same as var.vpn_connection_routes"
  value       = { for k, v in aws_vpn_connection_route.vpn_connection_routes : k => v.destination_cidr_block if v.destination_cidr_block != null && length(v.destination_cidr_block) > 0 }
}
output "vpn_connection_routes_region" {
  description = "Map of region values across all vpn_connection_routes, keyed the same as var.vpn_connection_routes"
  value       = { for k, v in aws_vpn_connection_route.vpn_connection_routes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpn_connection_routes_vpn_connection_id" {
  description = "Map of vpn_connection_id values across all vpn_connection_routes, keyed the same as var.vpn_connection_routes"
  value       = { for k, v in aws_vpn_connection_route.vpn_connection_routes : k => v.vpn_connection_id if v.vpn_connection_id != null && length(v.vpn_connection_id) > 0 }
}

