#
# DO NOT DELETE THESE LINES!
#
# Your subnet ID is:
#
#     subnet-5a424367
#
# Your security group ID is:
#
#     sg-ca91a0b1
#
# Your AMI ID is:
#
#     ami-db24d8b6
#
# Your Identity is:
#
#     manheim-37693cfc748049e45d87b8c7d8b9aacd
#AKIAIXGTIGWRAAAWPRLA
#iq9w9aDVmCMjrxkTWYVyxxxJnwAvWYAm4mKnj61l

variable "aws_access_key" {}
variable "aws_secret_key" {}

variable aws_region{
    default = "us-east-1"
}

provider "aws" "web"  {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}


resource "aws_instance" "web"{
	ami	= "ami-db24d8b6
	instance_type = "t2.micro"
	subnet_id = "subnet-5a424367"
	count = "1"
	vpc_security_group_ids=["sg-ca91a0b1"]
	tags{
		identity="manheim-37693cfc748049e45d87b8c7d8b9aacd"
		name="shoban"
		location="3205"
	}
}

output "public_ip" {
	value="${join(", ",aws_instance.web.*.public_ip)}"
}

output "public_dns" {
	value="${join(", ",aws_instance.web.*.public_dns)}"
}
