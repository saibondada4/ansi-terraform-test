resource "local_file" "inventory" {
 filename = "../ansible/inventory/hosts.ini"
 content = <<EOF
[pgadmin]
${aws_instance.eistest_instance[0].public_ip}
${aws_instance.eistest_instance[1].public_ip}
[docker]
${aws_instance.eistest_instance[0].public_ip}
${aws_instance.eistest_instance[1].public_ip}
EOF
}