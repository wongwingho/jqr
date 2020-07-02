#!/bin/sh
input=$1
if (($# > 0)); then 
    input=$1
else
  input=$(mktemp)
  cat >$input
fi
echo '' | fzf --print-query --preview "cat $input | jq {q}"

if (($# == 0)); then
  rm $input
fi
