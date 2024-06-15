#!/bin/bash

function _print_line {
  local width
  local line

  : && width=$(tput cols) \
    && line="$(printf '%*s' "$width" '' | tr ' ' '-')" \
    && echo "${line}"
}
