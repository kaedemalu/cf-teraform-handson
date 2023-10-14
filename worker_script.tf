resource "cloudflare_worker_script" "sample_workers" {
  account_id = "<CLOUDFLARE_ACCOUNT_ID>"
  name       = "test-cf-workers"
  content    = file("./scripts/workers.js")
  module     = true
}
