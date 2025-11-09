output "instance_id" {
  value = aws_instance.autodeployx.id
}

output "public_ip" {
  value = aws_instance.autodeployx.public_ip
}
