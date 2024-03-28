data "aws_ssm_parameter" "PROD_AWS_ACCESS_KEY_ID" {
  name = "PROD_AWS_ACCESS_KEY_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_AWS_SECRET_ACCESS_KEY" {
  name = "PROD_AWS_SECRET_ACCESS_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DB_URL" {
  name = "PROD_DB_URL"
  with_decryption = true
}

data "aws_ssm_parameter" "SECRET_KEY_BASE" {
  name = "SECRET_KEY_BASE"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_GOOGLE_MAPS_API_KEY" {
  name = "PROD_GOOGLE_MAPS_API_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_GOOGLE_MY_BUSINESS_ACCOUNT_ID" {
  name = "PROD_GOOGLE_MY_BUSINESS_ACCOUNT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_GOOGLE_MY_BUSINESS_CLIENT_ID" {
  name = "PROD_GOOGLE_MY_BUSINESS_CLIENT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_GOOGLE_ANALYTICS_API_SECRET" {
  name = "PROD_GOOGLE_ANALYTICS_API_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DB_PASSWORD" {
  name = "PROD_DB_PASSWORD"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_MAILGUN_API_KEY" {
  name = "PROD_MAILGUN_API_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DRCHRONO_CLIENT_ID" {
  name = "PROD_DRCHRONO_CLIENT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DRCHRONO_CLIENT_SECRET" {
  name = "PROD_DRCHRONO_CLIENT_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DRCHRONO_WEBHOOK_SECRET" {
  name = "PROD_DRCHRONO_WEBHOOK_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DRCHRONO_EMAIL" {
  name = "PROD_DRCHRONO_EMAIL"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DRCHRONO_ID" {
  name = "PROD_DRCHRONO_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DRCHRONO_DOCTOR_ID" {
  name = "PROD_DRCHRONO_DOCTOR_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_JAZZHR_API_KEY" {
  name = "PROD_JAZZHR_API_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_PVERIFY_CLIENT_ID" {
  name = "PROD_PVERIFY_CLIENT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_PVERIFY_CLIENT_SECRET" {
  name = "PROD_PVERIFY_CLIENT_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_HELP_SCOUT_APP_ID" {
  name = "PROD_HELP_SCOUT_APP_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_HELP_SCOUT_APP_SECRET" {
  name = "PROD_HELP_SCOUT_APP_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_ACTIVE_CAMPAIGN_API_URL" {
  name = "PROD_ACTIVE_CAMPAIGN_API_URL"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_ACTIVE_CAMPAIGN_KEY" {
  name = "PROD_ACTIVE_CAMPAIGN_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_DAILY_CO_API_KEY" {
  name = "PROD_DAILY_CO_API_KEY"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_TWILIO_ACCOUNT_SID" {
  name = "PROD_TWILIO_ACCOUNT_SID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_TWILIO_AUTH_TOKEN" {
  name = "PROD_TWILIO_AUTH_TOKEN"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_TWILIO_FROM_PHONE_NUMBER" {
  name = "PROD_TWILIO_FROM_PHONE_NUMBER"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_MICROSOFT_TENANT_ID" {
  name = "PROD_MICROSOFT_TENANT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_MICROSOFT_CLIENT_ID" {
  name = "PROD_MICROSOFT_CLIENT_ID"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_MICROSOFT_CLIENT_SECRET" {
  name = "PROD_MICROSOFT_CLIENT_SECRET"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_MODIO_SFTP_USER" {
  name = "PROD_MODIO_SFTP_USER"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_MODIO_SFTP_PASSWORD" {
  name = "PROD_MODIO_SFTP_PASSWORD"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_FLEET_URL" {
  name = "PROD_FLEET_URL"
  with_decryption = true
}

data "aws_ssm_parameter" "PROD_FLEET_ENROLLMENT_TOKEN" {
  name = "PROD_FLEET_ENROLLMENT_TOKEN"
  with_decryption = true
}





