terraform {
  required_providers {
    streamnative = {
      source = "streamnative/streamnative"
    }
  }
  required_version = ">= 1.2.0"
}

provider "streamnative" {
  key_file_path = "/Users/matt/Desktop/sndev-mattison-terraform.json"
}


resource "streamnative_rolebinding" "basic_role_binding" {
  count = 100
  name         = "basic_role_binding_${count.index + 1}"
  organization = "sndev"
  user_names = ["mattisonchao@gmail.com"]
  cluster_role_name = "org-readonly"
}