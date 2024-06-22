#!/bin/bash

source "$(dirname "$0")"/../utils/logs.sh

function test_infrastructure {

  : && log_loading "Testing GitHub infrastructure configuration with Terraform" \
    && log_info "Moving to GitHub infrastructure directory" \
    && cd common/infrastructure/github \
    && log_loading "Initiating Terraform" \
    && terraform init \
    && log_success "Terraform correctly initialized" \
    && log_loading "Importing current infrastructure configuration" \
    && terraform import github_repository.ludicrum ludicrum \
    && log_success "Current configuration imported successfully" \
    && log_loading "Checking changes Terraform plan" \
    && if terraform plan; then
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
