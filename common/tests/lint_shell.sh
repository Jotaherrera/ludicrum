#!/bin/bash

source "$(dirname "$0")"/../utils/logs.sh

function lint_sh {
  local ROOT
  local tmp
  local linting=false
  local args=(
    "--exclude=SC1090,SC1091,SC2016,SC2153,SC2154"
    "--external-sources"
  )

  : && if [ -n "$GITHUB_WORKSPACE" ]; then
    ROOT="$GITHUB_WORKSPACE"
    log_info "Runing on CI"
  else
    ROOT="$(git rev-parse --show-toplevel)"
    log_info "Running locally"
  fi \
    && log_loading "Linting bash files" \
    && tmp="$(mktemp)" \
    && find "${ROOT}" -wholename '*.sh' -type f | sort --ignore-case > "${tmp}" \
    && while IFS= read -r target; do
      log_info "Linting ${target}"
      if ! shellcheck "${args[@]}" "${target}"; then
        linting=true
      fi
    done < "${tmp}" \
    && rm -f "${tmp}" \
    && if $linting; then
      log_failure "There are files with programmatic and stylistic errors"
      return 1
    else
      log_success "Well done! All files are correct"
      return 0
    fi
}

function main {
  : && lint_sh
}

main "${@}"
