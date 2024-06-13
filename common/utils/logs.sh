#!/bin/bash

function _log_message {
  local level=$1
  local message="${@:2}"

  : && echo "[$(date +'%Y-%m-%d %H:%M:%S') - ${level}] ${message}"
}

function log_info {
  local level="INFO"
  local message="${1}"

  : && _log_message "${level}" "${message}"
}

function log_success {
  local level="INFO"
  local message="${1}"

  : && _log_message "${level}" "${message} ✅"
}

function log_error {
  local level="ERROR"
  local message="${1}"

  : && _log_message "${level}" "${message} ❓"
}

function log_failure {
  local level="ERROR"
  local message="${1}"

  : && _log_message "${level}" "${message} 💀"
}