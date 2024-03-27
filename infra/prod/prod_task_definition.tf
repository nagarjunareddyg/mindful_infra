resource "aws_ecs_task_definition" "mc_prod_app" {
  family = "mc-${var.env}-app-service"
  task_role_arn = aws_iam_role.mc_prod_ecs_task_role.arn
  execution_role_arn = aws_iam_role.mc_prod_ecs_task_execution_role.arn
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
    "name": "mc-prod-app",
    "command": [
        "start"
    ],
    "entryPoint": [
        "bin/mindful"
    ],
    "essential": true,
    "image": "560668774271.dkr.ecr.us-west-1.amazonaws.com/mindful-prod:latest",
    "logConfiguration": { 
        "logDriver": "awslogs",
        "options": { 
          "awslogs-group" : "mindfulcare-app",
          "awslogs-region": "us-west-1",
          "awslogs-stream-prefix": "mc-prod-app"
        }
    },
    "environment": [
      { "name" : "AWS_ACCESS_KEY_ID", "value" : "${data.aws_ssm_parameter.PROD_AWS_ACCESS_KEY_ID.value}" },
      { "name" : "AWS_SECRET_ACCESS_KEY", "value" : "${data.aws_ssm_parameter.PROD_AWS_SECRET_ACCESS_KEY.value}" },
      { "name" : "DATABASE_URL", "value" : "${data.aws_ssm_parameter.PROD_DB_URL.value}" },
      { "name" : "SECRET_KEY_BASE", "value" : "${data.aws_ssm_parameter.SECRET_KEY_BASE.value}" },
      { "name" : "HOST_ENDPOINT", "value" : "production.mindful.care" },
      { "name" : "HOST_URL", "value" : "https://production.mindful.care" },
      { "name" : "S3_BUCKET_NAME", "value" : "file.mindful.care.prod" },
      { "name" : "S3_BUCKET_URL_HEAD", "value" : "https://s3.amazonaws.com/file.mindful.care.prod" },
      { "name" : "GOOGLE_ANALYTICS_MEASUREMENT_ID", "value" : "G-YNN5191K8B" },
      { "name" : "GOOGLE_MAPS_API_KEY", "value" : "${data.aws_ssm_parameter.PROD_GOOGLE_MAPS_API_KEY.value}" },
      { "name" : "GOOGLE_MY_BUSINESS_ACCOUNT_ID", "value" : "${data.aws_ssm_parameter.PROD_GOOGLE_MY_BUSINESS_ACCOUNT_ID.value}" },
      { "name" : "GOOGLE_MY_BUSINESS_CLIENT_ID", "value" : "${data.aws_ssm_parameter.PROD_GOOGLE_MY_BUSINESS_CLIENT_ID.value}" },
      { "name" : "GOOGLE_ANALYTICS_API_SECRET", "value" : "${data.aws_ssm_parameter.PROD_GOOGLE_ANALYTICS_API_SECRET.value}" },
      { "name" : "SENTRY_ENV_NAME", "value" : "prod" },
      { "name" : "MAILGUN_DOMAIN", "value" : "mg.mindful.care" },
      { "name" : "MAILGUN_API_KEY", "value" : "${data.aws_ssm_parameter.PROD_MAILGUN_API_KEY.value}" },
      { "name" : "DRCHRONO_CLIENT_ID", "value" : "${data.aws_ssm_parameter.PROD_DRCHRONO_CLIENT_ID.value}" },
      { "name" : "DRCHRONO_CLIENT_SECRET", "value" : "${data.aws_ssm_parameter.PROD_DRCHRONO_CLIENT_SECRET.value}" },
      { "name" : "DRCHRONO_WEBHOOK_SECRET", "value" : "${data.aws_ssm_parameter.PROD_DRCHRONO_WEBHOOK_SECRET.value}" },
      { "name" : "DRCHRONO_API_URL", "value" : "https://drchrono.com" },
      { "name" : "DRCHRONO_APP_URL", "value" : "https://app.drchrono.com" },
      { "name" : "DRCHRONO_EMAIL", "value" : "${data.aws_ssm_parameter.PROD_DRCHRONO_EMAIL.value}" },
      { "name" : "DRCHRONO_ID", "value" : "${data.aws_ssm_parameter.PROD_DRCHRONO_ID.value}" },
      { "name" : "DRCHRONO_DOCTOR_ID", "value" : "${data.aws_ssm_parameter.PROD_DRCHRONO_DOCTOR_ID.value}" },
      { "name" : "DRCHRONO_ENV_APP_URL", "value" : "https://rpardeshi.drchrono.com" },
      { "name" : "JAZZHR_API_KEY", "value" : "${data.aws_ssm_parameter.PROD_JAZZHR_API_KEY.value}" },
      { "name" : "PVERIFY_CLIENT_ID", "value" : "${data.aws_ssm_parameter.PROD_PVERIFY_CLIENT_ID.value}" },
      { "name" : "PVERIFY_CLIENT_SECRET", "value" : "${data.aws_ssm_parameter.PROD_PVERIFY_CLIENT_SECRET.value}" },
      { "name" : "HELP_SCOUT_APP_ID", "value" : "${data.aws_ssm_parameter.PROD_HELP_SCOUT_APP_ID.value}" },
      { "name" : "HELP_SCOUT_APP_SECRET", "value" : "${data.aws_ssm_parameter.PROD_HELP_SCOUT_APP_SECRET.value}" },
      { "name" : "ACTIVE_CAMPAIGN_API_URL", "value" : "${data.aws_ssm_parameter.PROD_ACTIVE_CAMPAIGN_API_URL.value}" },
      { "name" : "ACTIVE_CAMPAIGN_KEY", "value" : "${data.aws_ssm_parameter.PROD_ACTIVE_CAMPAIGN_KEY.value}" },
      { "name" : "ACTIVE_CAMPAIGN_STATE_CUSTOM_FIELD_ID", "value" : "7" },
      { "name" : "ACTIVE_CAMPAIGN_INTAKE_FORM_DOWNLOAD_URL_CUSTOM_FIELD_ID", "value" : "37" },
      { "name" : "ACTIVE_CAMPAIGN_PATIENT_DRCHRONO_URL_CUSTOM_FIELD_ID", "value" : "38" },
      { "name" : "DAILY_CO_API_KEY", "value" : "${data.aws_ssm_parameter.PROD_DAILY_CO_API_KEY.value}" },
      { "name" : "TWILIO_ACCOUNT_SID", "value" : "${data.aws_ssm_parameter.PROD_TWILIO_ACCOUNT_SID.value}" },
      { "name" : "TWILIO_AUTH_TOKEN", "value" : "${data.aws_ssm_parameter.PROD_TWILIO_AUTH_TOKEN.value}" },
      { "name" : "TWILIO_FROM_PHONE_NUMBER", "value" : "${data.aws_ssm_parameter.PROD_TWILIO_FROM_PHONE_NUMBER.value}" },
      { "name" : "MICROSOFT_TENANT_ID", "value" : "${data.aws_ssm_parameter.PROD_MICROSOFT_TENANT_ID.value}" },
      { "name" : "MICROSOFT_CLIENT_ID", "value" : "${data.aws_ssm_parameter.PROD_MICROSOFT_CLIENT_ID.value}" },
      { "name" : "MODIO_SFTP_HOST_URL", "value" : "sftp.modiohealth.com" },
      { "name" : "MODIO_SFTP_PORT", "value" : "2022" },
      { "name" : "MODIO_SFTP_USER", "value" : "${data.aws_ssm_parameter.PROD_MODIO_SFTP_USER.value}" },
      { "name" : "MODIO_SFTP_PASSWORD", "value" : "${data.aws_ssm_parameter.PROD_MODIO_SFTP_PASSWORD.value}" },
      { "name" : "JOTFORM_MEDICAL_HISTORY_LINK", "value" : "https://hipaa.jotform.com/221487570721154" }
    ],
    "mountPoints": [
      {
        "containerPath": "/app",
        "sourceVolume": "mc-prod-app-fs"
      }
    ],
    "portMappings": [ 
        { 
          "containerPort": 8080,
          "hostPort": 8080,
          "protocol": "tcp"
        }
    ],
  }
  # { 
  #   "name": "mc-prod-elastic-agent",
  #   "essential": true,
  #   "image": "docker.elastic.co/beats/elastic-agent:8.8.0",
  #   "logConfiguration": { 
  #       "logDriver": "awslogs",
  #       "options": { 
  #         "awslogs-group" : "mindfulcare-app",
  #         "awslogs-region": "us-east-1",
  #         "awslogs-stream-prefix": "mc-prod-elastic"
  #       }
  #   },
  #   "environment": [
  #     { "name" : "FLEET_ENROLL", "value" : "1" },
  #     { "name" : "FLEET_INSECURE", "value" : "true" },
  #     { "name" : "FLEET_URL", "value" : "${data.aws_ssm_parameter.PROD_FLEET_URL.value}" },
  #     { "name" : "FLEET_ENROLLMENT_TOKEN", "value" : "${data.aws_ssm_parameter.PROD_FLEET_ENROLLMENT_TOKEN.value}" }
  #   ],
  #   "portMappings": [ 
  #       { 
  #       "containerPort": 443,
  #       "hostPort": 443,
  #       "protocol": "tcp"
  #       }
  #   ],
  # },
])
}
