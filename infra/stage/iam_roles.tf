resource "aws_iam_role" "mc_stage_ecs_task_role" {
  name = "mc-${var.env}-ecs-task-role"
  assume_role_policy = data.aws_iam_policy_document.mc_stage_ecs_assume_role_policy.json
  managed_policy_arns = [
    aws_iam_policy.mc_stage_ecs_execution_role_policy.arn,
    aws_iam_policy.mc_stage_ecs_secrets_policy.arn,
    aws_iam_policy.mc_stage_ecs_s3_policy.arn
  ] 
}

resource "aws_iam_role" "mc_stage_ecs_task_execution_role" {
  name = "mc-${var.env}-ecs-task-execution-role"
  assume_role_policy = data.aws_iam_policy_document.mc_stage_ecs_assume_role_policy.json
  managed_policy_arns = [
    aws_iam_policy.mc_stage_ecs_execution_role_policy.arn,
    aws_iam_policy.mc_stage_ecs_secrets_policy.arn,
    aws_iam_policy.mc_stage_ecs_s3_policy.arn
  ]
}

