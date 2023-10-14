<!-- BEGIN_TF_DOCS -->
# Cloudflare Terraform Hands On
## 実施手順
- 事前にR2の作成が有効化されていない場合、有効化しておく
- R2バケットを作成する
- APIキー、トークンを払い出し、控えておく
- 以下の`env`ファイルを作成する
  - 各々の値は書き換えてください
    ```shell
    export AWS_ACCOUNT_ID=<Cloudflare Account ID>
    export AWS_ACCESS_KEY_ID=<Use as AWS_ACCESS_KEY_ID (Create with Cloudflare API Token)>
    export AWS_SECRET_ACCESS_KEY=<Use as AWS_SECRET_ACCESS_KEY (Create with Cloudflare API Token)>
    
    export CLOUDFLARE_ACCOUNT_ID=<Cloudflare Account ID>
    export CLOUDFLARE_API_KEY=<Cloudflare API Key>
    export CLOUDFLARE_API_TOKEN=<Cloudflare API Token (Create with AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY)>
    ```
- Terraformのソースで以下を書き換えてください
  - `<CLOUDFLARE_ACCOUNT_ID>`：ご自身のアカウントID
  - `<Your R2 Bucket>`: 作成したR2バケット名
- 以下の順でコマンドを実行する
  ```shell
  . ./env
  terraform init
  terraform plan # ドライランを確認する
  terraform apply
  ```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.16.0 |
## Resources

| Name | Type |
|------|------|
| [cloudflare_worker_script.sample_workers](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/worker_script) | resource |
<!-- END_TF_DOCS -->