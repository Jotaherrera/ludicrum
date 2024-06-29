#!/bin/bash

source "$(dirname "$0")"/../utils/logs.sh

function test_infrastructure {
  : && pushd common/infrastructure/github \
    && log_loading "Testing GitHub infrastructure configuration with Terraform" \
    && log_loading "Initiating Terraform" \
    && terraform init \
    && log_success "Terraform correctly initialized" \
    && log_loading "Checking Terraform plan" \
    && if terraform plan -refresh=true; then
      log_success "Github infrastructure configuration is correct and ready to apply"
    else
      log_failure "Something went wrong with the infrastructure checking" \
        && exit 1
    fi
}

function main {
  : && test_infrastructure
}

main "${@}"
