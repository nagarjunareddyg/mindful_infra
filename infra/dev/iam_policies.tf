data "aws_iam_policy_document" "mc_dev_ecs_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
  }
}

resource "aws_iam_policy" "mc_dev_ecs_execution_role_policy" {
  name = "mc-${var.env}-ecs-execution-role-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}


resource "aws_iam_policy" "mc_dev_ecs_secrets_policy" {
  name = "mc-${var.env}-ecs-secrets-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ecr:GetAuthorizationToken",
          "kms:Decrypt",
          "ssm:GetParameters",
          "secretsmanager:GetSecretValue"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_policy" "mc_dev_ecs_s3_policy" {
  name = "mc-${var.env}-ecs-s3-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_policy" "mc_dev_ecs_ssm_policy" {
  name = "mc-${var.env}-ecs-ssm-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ssmmessages:CreateControlChannel",
          "ssmmessages:CreateDataChannel",
          "ssmmessages:OpenControlChannel",
          "ssmmessages:OpenDataChannel"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_policy" "mc_dev_ecs_exec_policy" {
  name = "mc-${var.env}-ecs-exec-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ecs:ExecuteCommand"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
