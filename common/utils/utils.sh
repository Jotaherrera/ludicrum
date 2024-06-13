#!/bin/bash

function _print_line {
  local width=$(tput cols)
  local line="$(printf '%*s' "$width" '' | tr ' ' '-')"

  : && echo "${line}"
}