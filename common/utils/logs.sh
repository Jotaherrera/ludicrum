#!/bin/bash

function _log_message {
  : && echo "[$(date +'%Y-%m-%d %H:%M:%S') - ${1}]" "${@:2}" 1>&2
}

function echo_stderr {
  echo "${@}" 1>&2
}

function info {
  echo_stderr "[INFO]" "${@}"
}

function log_info {
  : && _log_message "INFO" "${@}"
}

function log_success {
  : && _log_message "INFO" "${@}" "✅"
}

function log_loading {
  : && _log_message "INFO" "${@}" "⏳"
}

function log_error {
  : && _log_message "${ERROR}" "${@}"
}

function log_failure {
  : && _log_message "${ERROR}" "${@}" "💀"
}
