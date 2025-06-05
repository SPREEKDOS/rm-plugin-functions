# rm-plugin-functions

A fish plugin to remove unneeded functions in other fish plugins automatically.

## Overview

`rm-plugin-functions` is designed to help users of the [fish shell](https://fishshell.com/) keep their environment clean by automatically removing obsolete or unnecessary functions that may accumulate from other fish plugins.

## Features

- Scans for outdated or unneeded functions from other plugins.
- Automates the cleanup process, reducing manual maintenance.

## Repository Structure

- `completions/` - Likely contains command-line completions for fish shell.
- `conf.d/` - Likely contains configuration files loaded at shell startup.
- `functions/` - Houses the main functions for the plugin.

## Installation
Using fisher
`fisher install SPREEKDOS/rm-plugin-functions`

## Usage
rm-plugin-functions
    remove functions in ~/.config/fish/functions using function names from ~/.config/fish/rm-plugin-functions
rm-plugin-functions a|add FUNCTION
    add function name to ~/.config/fish/rm-plugin-functions file
rm-plugin-functions u|update
    run fisher update before running the script
rm-plugin-functions l|list
    list ~/.config/fish/rm-plugin-functions file
rm-plugin-functions l|list functions
    list ~/.config/fish/functions directory
rm-plugin-functions r|remove FUNCTION
    remove function name from ~/.config/fish/rm-plugin-functions file
    
## Contributing

If you'd like to contribute, feel free to open a pull request or issue.

## License

MIT
---

For any questions or suggestions, please visit the [GitHub repo](https://github.com/SPREEKDOS/rm-plugin-functions).
