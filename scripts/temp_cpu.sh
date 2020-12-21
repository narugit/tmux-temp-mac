#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# shellcheck source=helpers.sh
source "$CURRENT_DIR/helpers.sh"

print_cpu_temp() {
  if command_exists "osx-cpu-temp"; then
    local temp
    temp=$(osx-cpu-temp | grep -o "[0-9]*\.[0-9]")
    printf $temp
  else
    echo "no osx-cpu-temp found"
  fi
}

main() {
  print_cpu_temp
  printf "°C"
}
main
