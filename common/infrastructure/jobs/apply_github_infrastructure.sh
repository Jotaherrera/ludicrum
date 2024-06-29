#!/bin/bash

source "$(dirname "$0")"/../../utils/logs.sh

function apply_infrastructure {
  : && pushd common/infrastructure/github \
    && log_loading "Applying GitHub infrastructure configuration with Terraform" \
    && log_info "Moving to GitHub infrastructure directory" \
    && log_loading "Initiating Terraform" \
    && terraform init \
    && log_success "Terraform correctly initialized" \
    && log_loading "Applying infrastructure changes" \
    && if terraform apply -refresh=true -auto-approve; then
      log_success "GitHub infrastructure configuration has been applied correctly"
    else
      log_failure "Something went wrong while applying the infrastructure" \
        && exit 1
    fi
}

function main {
  : && apply_infrastructure
}

main "${@}"
