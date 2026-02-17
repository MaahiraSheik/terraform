# data "aws_ami" "joindevops" {
#   owners           = ["544794036745"]
#   most_recent      = true

#   filter {
#     name   = "name"
#     values = ["Redhat-9-DevOps-Practice"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }

data "aws_ami" "joindevops" {
  owners      = ["544794036745"]
  most_recent = true

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice*"]   # wildcard
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami_id" {
  value       = data.aws_ami.joindevops.id
}
