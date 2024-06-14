#!/bin/bash

source "$(dirname "$0")/../../../common/utils/logs.sh"

case "${1-}" in
  css) npx prettier --parser css ;;
  html) npx prettier --parser html ;;
  javascript) npx prettier --parser babel ;;
  json) npx prettier --parser json ;;
  markdown) npx prettier --parser markdown ;;
  python)
    black --config ./common/developer/formatter/config/python/black-settings.toml -
    ;;
  shellscript) shfmt -bn -ci -i 2 -s -sr - ;;
  terraform) terraform fmt - ;;
  yaml) npx prettier --parser yaml ;;
  *) exit 1;;
esac
