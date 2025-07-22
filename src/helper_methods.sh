#!/usr/bin/env zsh

# simply print passed array
#
# example
#
#   myarray=()
#   print_array myarray
#
print_array() {
  local arr=$1
  local -a array_copy
  array_copy=( "${(P@)arr}" )

  echo ""
  echo "begin >>>"
  printf "%s\n" "${array_copy[@]}"
  echo "<<< end"
  echo ""
}
