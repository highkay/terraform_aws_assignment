variable "region" {
  default = "ap-southeast-1"
}

variable "availability_zone" {
  default = "ap-southeast-1a"
}

# As use a key-pair already created in the aws console.
# variable "public_key_path" {
#   description = <<DESCRIPTION
# Path to the SSH public key to be used for authentication.
# Ensure this keypair is added to your local SSH agent so provisioners can
# connect.
# Example: ~/.ssh/terraform.pub
# DESCRIPTION
# }

variable "private_key_path" {
  description = <<DESCRIPTION
Path to the SSH private key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.key
DESCRIPTION
}

variable "key_name" {
  description = "AWS key pair name:"
}

variable "amis" {
  type = "map"

  default = {
    "ap-southeast-1" = "ami-93733def"
  }
}
