# 42utils

## putheader.sh
This script will add 42header in each file located under the given directory, excluding all `.git` subdirectories.

### Usage
```sh
$ bash putheader.sh ~/Documents  # Adds 42header in each file under ~/Documents directory
$ bash putheader.sh . cpp        # Adds 42header in each file with ".cpp" suffix under the current working directory
$ bash putheader.sh . ! txt      # Adds 42header in each file except ".txt" suffix under the current working directory
```

### Requirements
- vim editor
- [42header](https://github.com/42Paris/42header) plugin for vim
