# rm-plugin-functions

A fish plugin to remove unneeded functions from other fish plugins automatically.

## Overview

`rm-plugin-functions` is designed to help users of the [fish shell](https://fishshell.com/) keep their environment clean by automatically removing unnecessary functions that may accumulate from other fish plugins.

## Features

- Remove for unneeded functions from other plugins.
- Automates the cleanup process, reducing manual maintenance.

## Repository Structure

- `completions/` - contains command-line completions for rm-plugin-functions script.
- `conf.d/` - contains startup script that run the automatic removal of functions.
- `functions/` - Houses the callable rm-plugin-functions script.

## Installation
Using fisher

    fisher install SPREEKDOS/rm-plugin-functions

## Usage
remove functions in ~/.config/fish/functions using function names from ~/.config/fish/rm-plugin-functions

`rm-plugin-functions`

add function name to ~/.config/fish/rm-plugin-functions file
    
`rm-plugin-functions a|add FUNCTION`

run fisher update before running the script

`rm-plugin-functions u|update`

list ~/.config/fish/rm-plugin-functions file
    
`rm-plugin-functions l|list`

list ~/.config/fish/functions directory
    
`rm-plugin-functions l|list functions`

remove function name from ~/.config/fish/rm-plugin-functions file
    
`rm-plugin-functions r|remove FUNCTION`

    
## Contributing

If you'd like to contribute, feel free to open a pull request or issue.

## License

MIT

---

For any questions or suggestions, please visit the [GitHub repo](https://github.com/SPREEKDOS/rm-plugin-functions).
