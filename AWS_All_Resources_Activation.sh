#!/bin/zsh

# --- Terraform All Resources Activation ---
terraform apply -var-file="secret.tfvars" -auto-approve

sleep 15


# --- SSM Run Command Exectution (EC2 DataDog-Agent Install) ---
EC2_TARGET_ID=$(terraform state show "aws_instance.example" | grep "arn" | awk -F'"' '{print $2}' | awk -F'/' '{print $2}')

aws ssm send-command \
    --document-name "dd-agent-install" \
    --comment "Install DataDog-Agent to EC2" \
    --instance-ids ${EC2_TARGET_ID} \
    --region ap-northeast-1 \
    --output text