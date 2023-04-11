#!/bin/zsh

# --- Terraform All Resources Activation ---
terraform destroy -var-file="secret.tfvars" -auto-approve
