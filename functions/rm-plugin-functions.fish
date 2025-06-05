#!/usr/bin/env fish
# @SPREEKDOS/rm-plugin-functions/functions/rm-plugin-functions.fish:v1.0.0
set -g script_name $(status basename)

function usage
    echo "usage: $script_name 
            remove functions in ~/.config/fish/functions using function names from ~/.config/fish/rm-plugin-functions
        $script_name a|add FUNCTION
            add function name to ~/.config/fish/rm-plugin-functions file
        $script_name u|update
            run fisher update before running the script
        $script_name l|list
            list ~/.config/fish/rm-plugin-functions file
        $script_name l|list functions
            list ~/.config/fish/functions directory
        $script_name r|remove FUNCTION
            remove function name from ~/.config/fish/rm-plugin-functions file
        options:
            -h, --help     Print this help message"
end
function add
    echo $func \
    | tr ' ' '\n' \
    | xargs -I{} fish -Nc "path is $HOME/.config/fish/functions/{}" 2> /dev/null
    or err "one of the functions given doesnt exist in ~/.config/fish/functions"
    path is $list ; or touch $list
    if not echo $func \
    | tr ' ' '\n' \
    | xargs -I{} fish -Nc "contains {} $(cat $list | tr '\n' ' ')" 2> /dev/null
        echo $func | tr ' ' '\n' >> $list
    end
end
function list
    path is $list ; or err $list is not found
    set funcs "$HOME/.config/fish/functions"
    switch $argv[1]
        case ''
            batcat $list ; or cat $list
        case 'functions'
            ls $funcs
        case '*'
            usage ; exit 1
    end
        
end
function remove
    if echo $func \
    | tr ' ' '\n' \
    | xargs -I{} fish -Nc "contains {} $(cat $list | tr '\n' ' ')" 2> /dev/null
        echo $func \
        | tr ' ' '\n' \
        | xargs -I{} sed -i "/{}/d" $list 2> /dev/null
    else
        err "one of the functions given is not in $list"
    end
end
function update
    fisher update
end
function main
    argparse h/help -- $argv
    if set -q _flag_h
        usage ; return 0
    end
    set -g list $HOME/.config/fish/rm-plugin-functions
    set -g func $argv[2..]
    set -g func $(path basename $func)
    string match .fish $(path extension $func)
    or set -g func $func.fish
    
    switch "$argv[1]" 
        case add a
            add ; return 0
        case list l
            list $argv[2..] ; return 0
        case remove r
            remove ; return 0
        case update u
            update ; return 0
        case ''
            if path is $HOME/.config/fish/functions/$(cat $list)
                cat $list \
                | tr ' ' '\n' \
                | xargs -I{} rm -f $HOME/.config/fish/functions/{} 2> /dev/null
            end
        case '*'
            usage ; return 1
    end
end

main $argv
