resource "aws_kms_key" "default" {
  description             = "KMS key for ${var.ecs_cluster_name}"
  deletion_window_in_days = 7
}

resource "aws_kms_key_policy" "default" {
  key_id = join("", aws_kms_key.default.*.id)
  policy = jsonencode({
    Statement = [
      {
        Action = "kms:*"
        Effect = "Allow"
        Principal = {
          AWS = "*"
        }

        Resource = "*"
        Sid      = "Enable IAM User Permissions"
      },
    ]
    Version = "2012-10-17"
  })
}

resource "aws_cloudwatch_log_group" "default" {
  name = var.ecs_cluster_log_group_name
  kms_key_id = aws_kms_key.default.arn
}

resource "aws_ecs_cluster" "default" {
  name = var.ecs_cluster_name
  depends_on = [
    aws_kms_key.default
  ] 

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  configuration {
    execute_command_configuration {
      # kms_key_id = aws_kms_key.default.arn
      logging    = "OVERRIDE"

      log_configuration {
        cloud_watch_encryption_enabled = false
        cloud_watch_log_group_name     = aws_cloudwatch_log_group.default.*.name[0]
      }
    }
  }
}

resource "aws_ecs_cluster_capacity_providers" "default" {
  cluster_name = join("", aws_ecs_cluster.default.*.name)

  capacity_providers = ["FARGATE"]

  default_capacity_provider_strategy {
    base              = 1
    weight            = 100
    capacity_provider = "FARGATE"
  }
}