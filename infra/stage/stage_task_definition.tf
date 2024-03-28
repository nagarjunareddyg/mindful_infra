resource "aws_ecs_task_definition" "mc_stage_app" {
  family = "mc-${var.env}-app-service"
  task_role_arn = aws_iam_role.mc_stage_ecs_task_role.arn
  execution_role_arn = aws_iam_role.mc_stage_ecs_task_execution_role.arn
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu       = 1024
  memory    = 2048
  volume {
    name      = "mc-${var.env}-app-fs"
  }
  runtime_platform {
    operating_system_family = "LINUX"
    cpu_architecture = "ARM64"
  }
  container_definitions = jsonencode([
  { 
    "command": [
        "start"
    ],
    "entryPoint": [
        "bin/mindful"
    ],
    "essential": true,
    "image": "560668774271.dkr.ecr.us-east-2.amazonaws.com/mindful-stage:stage-e901adb521eaba4b26427649a08accd76652dc7a",
    "logConfiguration": { 
        "logDriver": "awslogs",
        "options": { 
          "awslogs-group" : "mindfulcare-app",
          "awslogs-region": "us-east-1",
          "awslogs-stream-prefix": "mc-stage-app"
        }
    },
    "environment": [
      { "name" : "AWS_ACCESS_KEY_ID", "value" : "${data.aws_ssm_parameter.STAGE_AWS_ACCESS_KEY_ID.value}" },
      { "name" : "AWS_SECRET_ACCESS_KEY", "value" : "${data.aws_ssm_parameter.STAGE_AWS_SECRET_ACCESS_KEY.value}" },
      { "name" : "DATABASE_URL", "value" : "${data.aws_ssm_parameter.STAGE_DB_URL.value}" },
      { "name" : "SECRET_KEY_BASE", "value" : "${data.aws_ssm_parameter.SECRET_KEY_BASE.value}" },
      { "name" : "HOST_ENDPOINT", "value" : "staging.mindful.care" },
      { "name" : "HOST_URL", "value" : "https://staging.mindful.care" },
      { "name" : "S3_BUCKET_NAME", "value" : "file.mindful.care.stage" },
      { "name" : "S3_BUCKET_URL_HEAD", "value" : "https://s3.amazonaws.com/file.mindful.care.stage" },
      { "name" : "GOOGLE_ANALYTICS_MEASUREMENT_ID", "value" : "G-YNN5191K8B" },
      { "name" : "GOOGLE_MAPS_API_KEY", "value" : "${data.aws_ssm_parameter.STAGE_GOOGLE_MAPS_API_KEY.value}" },
      { "name" : "GOOGLE_MY_BUSINESS_ACCOUNT_ID", "value" : "${data.aws_ssm_parameter.STAGE_GOOGLE_MY_BUSINESS_ACCOUNT_ID.value}" },
      { "name" : "GOOGLE_MY_BUSINESS_CLIENT_ID", "value" : "${data.aws_ssm_parameter.STAGE_GOOGLE_MY_BUSINESS_CLIENT_ID.value}" },
      { "name" : "GOOGLE_ANALYTICS_API_SECRET", "value" : "${data.aws_ssm_parameter.STAGE_GOOGLE_ANALYTICS_API_SECRET.value}" },
      { "name" : "SENTRY_ENV_NAME", "value" : "stage" },
      { "name" : "MAILGUN_DOMAIN", "value" : "mg.mindful.care" },
      { "name" : "MAILGUN_API_KEY", "value" : "${data.aws_ssm_parameter.STAGE_MAILGUN_API_KEY.value}" },
      { "name" : "DRCHRONO_CLIENT_ID", "value" : "${data.aws_ssm_parameter.STAGE_DRCHRONO_CLIENT_ID.value}" },
      { "name" : "DRCHRONO_CLIENT_SECRET", "value" : "${data.aws_ssm_parameter.STAGE_DRCHRONO_CLIENT_SECRET.value}" },
      { "name" : "DRCHRONO_WEBHOOK_SECRET", "value" : "${data.aws_ssm_parameter.STAGE_DRCHRONO_WEBHOOK_SECRET.value}" },
      { "name" : "DRCHRONO_API_URL", "value" : "https://drchrono.com" },
      { "name" : "DRCHRONO_APP_URL", "value" : "https://app.drchrono.com" },
      { "name" : "DRCHRONO_EMAIL", "value" : "${data.aws_ssm_parameter.STAGE_DRCHRONO_EMAIL.value}" },
      { "name" : "DRCHRONO_ID", "value" : "${data.aws_ssm_parameter.STAGE_DRCHRONO_ID.value}" },
      { "name" : "DRCHRONO_DOCTOR_ID", "value" : "${data.aws_ssm_parameter.STAGE_DRCHRONO_DOCTOR_ID.value}" },
      { "name" : "DRCHRONO_ENV_APP_URL", "value" : "https://mindfulcarestage.drchrono.com" },
      { "name" : "JAZZHR_API_KEY", "value" : "${data.aws_ssm_parameter.STAGE_JAZZHR_API_KEY.value}" },
      { "name" : "PVERIFY_CLIENT_ID", "value" : "${data.aws_ssm_parameter.STAGE_PVERIFY_CLIENT_ID.value}" },
      { "name" : "PVERIFY_CLIENT_SECRET", "value" : "${data.aws_ssm_parameter.STAGE_PVERIFY_CLIENT_SECRET.value}" },
      { "name" : "HELP_SCOUT_APP_ID", "value" : "${data.aws_ssm_parameter.STAGE_HELP_SCOUT_APP_ID.value}" },
      { "name" : "HELP_SCOUT_APP_SECRET", "value" : "${data.aws_ssm_parameter.STAGE_HELP_SCOUT_APP_SECRET.value}" },
      { "name" : "ACTIVE_CAMPAIGN_API_URL", "value" : "${data.aws_ssm_parameter.STAGE_ACTIVE_CAMPAIGN_API_URL.value}" },
      { "name" : "ACTIVE_CAMPAIGN_KEY", "value" : "${data.aws_ssm_parameter.STAGE_ACTIVE_CAMPAIGN_KEY.value}" },
      { "name" : "ACTIVE_CAMPAIGN_STATE_CUSTOM_FIELD_ID", "value" : "2" },
      { "name" : "ACTIVE_CAMPAIGN_INTAKE_FORM_DOWNLOAD_URL_CUSTOM_FIELD_ID", "value" : "3" },
      { "name" : "ACTIVE_CAMPAIGN_PATIENT_DRCHRONO_URL_CUSTOM_FIELD_ID", "value" : "4" },
      { "name" : "DAILY_CO_API_KEY", "value" : "${data.aws_ssm_parameter.STAGE_DAILY_CO_API_KEY.value}" },
      { "name" : "TWILIO_ACCOUNT_SID", "value" : "${data.aws_ssm_parameter.STAGE_TWILIO_ACCOUNT_SID.value}" },
      { "name" : "TWILIO_AUTH_TOKEN", "value" : "${data.aws_ssm_parameter.STAGE_TWILIO_AUTH_TOKEN.value}" },
      { "name" : "TWILIO_FROM_PHONE_NUMBER", "value" : "${data.aws_ssm_parameter.STAGE_TWILIO_FROM_PHONE_NUMBER.value}" },
      { "name" : "MICROSOFT_TENANT_ID", "value" : "${data.aws_ssm_parameter.STAGE_MICROSOFT_TENANT_ID.value}" },
      { "name" : "MICROSOFT_CLIENT_ID", "value" : "${data.aws_ssm_parameter.STAGE_MICROSOFT_CLIENT_ID.value}" },
      { "name" : "MODIO_SFTP_HOST_URL", "value" : "sftp.modiohealth.com" },
      { "name" : "MODIO_SFTP_PORT", "value" : "2022" },
      { "name" : "MODIO_SFTP_USER", "value" : "${data.aws_ssm_parameter.STAGE_MODIO_SFTP_USER.value}" },
      { "name" : "MODIO_SFTP_PASSWORD", "value" : "${data.aws_ssm_parameter.STAGE_MODIO_SFTP_PASSWORD.value}" }
    ],
    "name": "mc-stage-app",
    "mountPoints": [
      {
        "containerPath": "/app",
        "sourceVolume": "mc-stage-app-fs"
      }
    ],
    "portMappings": [ 
        { 
          "containerPort": 8080,
          "hostPort": 8080,
          "protocol": "tcp"
        }
    ]
  }
])
}
