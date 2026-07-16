terraform {
  backend "s3" {
    # Bootstrap state lives under its own key, separate from per-environment
    # app state (../). Init locally with:
    #   terraform init \
    #     -backend-config="bucket=twin-terraform-state-930576231940" \
    #     -backend-config="key=bootstrap/terraform.tfstate" \
    #     -backend-config="region=ap-southeast-1" \
    #     -backend-config="dynamodb_table=twin-terraform-locks" \
    #     -backend-config="encrypt=true"
  }
}
