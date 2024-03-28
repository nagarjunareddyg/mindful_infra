resource "aws_efs_file_system" "mc-prod-app-fs" {
  creation_token = "mc-${var.env}-app-fs"
  encrypted = "true"
}

resource "aws_efs_mount_target" "mc-prod-app-mount" {
  file_system_id = aws_efs_file_system.mc-prod-app-fs.id
  subnet_id      = module.mc-prod-private-subnet.private_subnet_id[0]
}