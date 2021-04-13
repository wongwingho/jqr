#!/bin/sh
input=$1
if (($# > 0)); then 
    input=$1
else
  input=$(mktemp)
  cat >$input
  trap "rm -f $input" EXIT
fi
echo '' | fzf  --print-query --preview  "jq -C {q} $input" | xargs -I{} jq {} $input

