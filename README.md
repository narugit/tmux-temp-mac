# tmux-temp-mac
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/narugit/tmux-temp-mac/blob/master/LICENSE)

This plugin is a tmux plugin to monitor cpu temperature in mac os.

## Installation
1. Plaese install osx-cpu-temp.

```
$ mkdir ~/install-tmux-temp-mac-dependency
$ cd ~/install-tmux-temp-mac-dependency
$ git clone https://github.com/lavoiesl/osx-cpu-temp
$ cd osx-cpu-temp
$ make
$ sudo make install
$ cd ~
$ rm -rf ~/install-tmux-temp-mac-dependency
```

2. After installing osx-cpu-temp, please check the installation is completed. If not, please try again.

```
$ source ~/.zshrc # This command is example. Please reload your shell rc file to reload PATH.
$ osx-cpu-temp # If the output is not something like "there is no osx-cpu-temp", your installation of osx-cpu-temp is completed. 
```

3. Add my plugin to the list of tpm plugins in `.tmux.conf`.

```
set -g @plugin 'narugit/tmux-temp-mac'
```

4. `prefix + I` to fetch the plugin and source it.

## Usage
Add any of the supported format strings to the `status-right` tmux option. 

```
set -g status-right 'temp: #{temp_cpu}'
```
