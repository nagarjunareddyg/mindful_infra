# resource "aws_service_discovery_private_dns_namespace" "default" {
#   name        = var.service_discovery_namespace
#   description = ""
#   vpc         = var.service_discovery_vpc_id
# }

resource "aws_service_discovery_public_dns_namespace" "default" {
  name        = var.service_discovery_namespace
  description = ""
}


resource "aws_service_discovery_service" "default" {
  name = var.service_discovery_name

  dns_config {
    namespace_id = join("", aws_service_discovery_public_dns_namespace.default.*.id)

    dns_records {
      ttl  = 10
      type = "A"
    }

    routing_policy = "MULTIVALUE"
  }

#   health_check_custom_config {
#     failure_threshold = 5
#   }

  health_check_config {
    failure_threshold = 10
    resource_path     = "/"
    type              = "HTTP"
  }
}