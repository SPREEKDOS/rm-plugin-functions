#!/usr/bin/env fish
# @SPREEKDOS/rm-plugin-functions/completions/rm-plugin-functions.fish:v1.0.0
complete --command rm-plugin-functions --exclusive --short h --long help --description "Print help"
complete --command rm-plugin-functions --exclusive --condition __fish_use_subcommand --arguments add --description "add function name to ~/.config/fish/rm-plugin-functions file"
complete --command rm-plugin-functions --exclusive --condition __fish_use_subcommand --arguments update --description "run rm-plugin-functions update before running the script"
complete --command rm-plugin-functions --exclusive --condition __fish_use_subcommand --arguments remove --description "remove function name from ~/.config/fish/rm-plugin-functions file"
complete --command rm-plugin-functions --exclusive --condition __fish_use_subcommand --arguments list --description "list ~/.config/fish/rm-plugin-functions file"
