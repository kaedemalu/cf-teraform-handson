terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
  backend "s3" {
    bucket                      = "<Your R2 Bucket>"
    key                         = "default.tfstate"
    region                      = "us-east-1"
    endpoint                    = "https://<CLOUFLARE_ACCOUNT_ID>.r2.cloudflarestorage.com"
    skip_credentials_validation = true
  }
}
