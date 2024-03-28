data "aws_ssm_parameter" "STAGE_AWS_ACCESS_KEY_ID" {
  name = "STAGE_AWS_ACCESS_KEY_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_AWS_SECRET_ACCESS_KEY" {
  name = "STAGE_AWS_SECRET_ACCESS_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DB_URL" {
  name = "STAGE_DB_URL"
  with_decryption = true
}

data "aws_ssm_parameter" "SECRET_KEY_BASE" {
  name = "SECRET_KEY_BASE"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_GOOGLE_MAPS_API_KEY" {
  name = "STAGE_GOOGLE_MAPS_API_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_GOOGLE_MY_BUSINESS_ACCOUNT_ID" {
  name = "STAGE_GOOGLE_MY_BUSINESS_ACCOUNT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_GOOGLE_MY_BUSINESS_CLIENT_ID" {
  name = "STAGE_GOOGLE_MY_BUSINESS_CLIENT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_GOOGLE_ANALYTICS_API_SECRET" {
  name = "STAGE_GOOGLE_ANALYTICS_API_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DB_PASSWORD" {
  name = "STAGE_DB_PASSWORD"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_MAILGUN_API_KEY" {
  name = "STAGE_MAILGUN_API_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DRCHRONO_CLIENT_ID" {
  name = "STAGE_DRCHRONO_CLIENT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DRCHRONO_CLIENT_SECRET" {
  name = "STAGE_DRCHRONO_CLIENT_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DRCHRONO_WEBHOOK_SECRET" {
  name = "STAGE_DRCHRONO_WEBHOOK_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DRCHRONO_EMAIL" {
  name = "STAGE_DRCHRONO_EMAIL"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DRCHRONO_ID" {
  name = "STAGE_DRCHRONO_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DRCHRONO_DOCTOR_ID" {
  name = "STAGE_DRCHRONO_DOCTOR_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_JAZZHR_API_KEY" {
  name = "STAGE_JAZZHR_API_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_PVERIFY_CLIENT_ID" {
  name = "STAGE_PVERIFY_CLIENT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_PVERIFY_CLIENT_SECRET" {
  name = "STAGE_PVERIFY_CLIENT_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_HELP_SCOUT_APP_ID" {
  name = "STAGE_HELP_SCOUT_APP_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_HELP_SCOUT_APP_SECRET" {
  name = "STAGE_HELP_SCOUT_APP_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_ACTIVE_CAMPAIGN_API_URL" {
  name = "STAGE_ACTIVE_CAMPAIGN_API_URL"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_ACTIVE_CAMPAIGN_KEY" {
  name = "STAGE_ACTIVE_CAMPAIGN_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_DAILY_CO_API_KEY" {
  name = "STAGE_DAILY_CO_API_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_TWILIO_ACCOUNT_SID" {
  name = "STAGE_TWILIO_ACCOUNT_SID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_TWILIO_AUTH_TOKEN" {
  name = "STAGE_TWILIO_AUTH_TOKEN"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_TWILIO_FROM_PHONE_NUMBER" {
  name = "STAGE_TWILIO_FROM_PHONE_NUMBER"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_MICROSOFT_TENANT_ID" {
  name = "STAGE_MICROSOFT_TENANT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_MICROSOFT_CLIENT_ID" {
  name = "STAGE_MICROSOFT_CLIENT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_MICROSOFT_CLIENT_SECRET" {
  name = "STAGE_MICROSOFT_CLIENT_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_MODIO_SFTP_USER" {
  name = "STAGE_MODIO_SFTP_USER"
  with_decryption = true
}

data "aws_ssm_parameter" "STAGE_MODIO_SFTP_PASSWORD" {
  name = "STAGE_MODIO_SFTP_PASSWORD"
  with_decryption = true
}





