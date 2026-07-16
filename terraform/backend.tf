terraform {
  backend "s3" {
    # These values are set by deployment scripts via -backend-config
    # For local init, pass the same values:
    #   terraform init \
    #     -backend-config="bucket=twin-terraform-state-930576231940" \
    #     -backend-config="key=dev/terraform.tfstate" \
    #     -backend-config="region=ap-southeast-1" \
    #     -backend-config="dynamodb_table=twin-terraform-locks" \
    #     -backend-config="encrypt=true"
  }
}
