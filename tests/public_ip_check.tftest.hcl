variables {
  instance_type = "t3.nano"
}

run "public_ip_check" {

  command = apply

  assert {
    condition     = aws_instance.default.public_ip != ""
    error_message = "Public IP is empty"
  }
}