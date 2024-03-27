resource "aws_instance" "default" {
  ami                         = var.ec2_ami
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = var.ec2_associate_public_ip_address
  availability_zone           = var.ec2_availability_zone
  disable_api_stop            = var.ec2_disable_api_stop
  disable_api_termination     = var.ec2_disable_api_termination
  ebs_block_device            = var.ec2_ebs_block_device
  ebs_optimized               = var.ec2_ebs_optimized
  iam_instance_profile        = var.ec2_iam_instance_profile
  key_name                    = var.ec2_key_name
  launch_template             = var.ec2_launch_template
  maintenance_options {
    auto_recovery = var.ec2_instance_auto_recovery
  }
  monitoring                  = var.ec2_monitoring
  private_dns_name_options{
    enable_resource_name_dns_a_record = true
  }
  private_ip                  = var.ec2_private_ip
  root_block_device {
    volume_type           = var.ec2_root_volume_type
    volume_size           = var.ec2_root_volume_size
    delete_on_termination = var.ec2_root_volume_delete_on_termination
    encrypted             = var.ec2_root_volume_encrypted
    iops                  = var.ec2_root_volume_iops
    kms_key_id            = var.ec2_root_volume_kms_key_id
    throughput            = var.ec2_root_volume_throughput
  }
  secondary_private_ips = var.ec2_secondary_private_ips
  security_groups       = var.ec2_security_groups
  subnet_id             = var.ec2_subnet_id
  user_data             = var.ec2_user_data
}
