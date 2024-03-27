resource "aws_efs_file_system" "mc-dev-app-fs" {
  creation_token = "mc-${var.env}-app-fs"
  encrypted = "true"
}

resource "aws_efs_mount_target" "mc-dev-app-mount" {
  file_system_id = aws_efs_file_system.mc-dev-app-fs.id
  subnet_id      = module.mc-dev-private-subnet.private_subnet_id[0]
}
