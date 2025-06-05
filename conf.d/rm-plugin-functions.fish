#!/usr/bin/env fish
# @SPREEKDOS/rm-plugin-functions/conf.d/rm-plugin-functions.fish:v1.0.0
set list $HOME/.config/fish/rm-plugin-functions
if path is $list
    if path is $HOME/.config/fish/functions/$(cat $list)
        echo $HOME/.config/fish/functions/$(cat $list) \
        | xargs --verbose rm 
    end
end
