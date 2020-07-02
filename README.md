jq
==

Simple shell script which uses [fzf](https://github.com/junegunn/fzf) and [jq](https://github.com/stedolan/jq) to do a simple REPL. 
You will need to have fzf and jq in your path

##Usage
$ jqr example.json

Or take from stdin

$ cat example.json | jqr


##Credits
https://paweldu.dev/posts/fzf-live-repl/