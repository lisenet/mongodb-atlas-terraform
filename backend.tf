terraform {
  backend "s3" {
    profile        = "terraform_homelab"
    region         = "eu-west-2"
    bucket         = "terraform-homelab-remote-state"
    key            = "mongo-atlas.tfstate"
    dynamodb_table = "terraform-homelab-remote-state-lock"
    encrypt        = true
  }
}
