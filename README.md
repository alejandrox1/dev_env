# Repo for configuring your Dev environment
This repo contains instructions and code samples based primarily on
Ubuntu/Debian and MacOS (Windows coming in shortly).

## Directories
1. [local-setup](local-setup/) Contains instructions for setting up your
   machine with some things like `Git`, a Bash prompt, some useful aliases,
   etc.

2. [configuration](configuration/) Contains instructions for installing some
   useful tools for provisioning and configuration such as `terraform` and
   `ansible`.

3. [docker](docker/) Contains some scripts to help you install `Docker` and
   `docker machine`.

4. [languages](languages/) Contains some scripts to install languages such as
   `Go`, `Python`, etc.

5. [bash-1liners](bash-1liners/) In case you are bored and want to automate
   some things the Bash way.

## Miscellaneous
* Format your source code
  Copy a style guide from [style-guides](\style-guides)
  ```
  find . -name "*.c" -o -name "*.h" | xargs clang-format -i
  ```

  On a Debian system you may need to install `clang-format` first,
  ```
  sudo apt-get install -y clang-format

  # To make a style-guide from scratch
  clang-format -style=llvm -dump-config > .clang-format
  ```
  For more info on how to read the format file see 
  [Clang-Format Style Options](https://clang.llvm.org/docs/ClangFormatStyleOptions.html)

* Browse through the source
  On the root of your dev tree run,
  ```
  ctags -R .
  ```

  Then whenever you want to vim it up,
  ```
  set tags=tags;
  ```
  If you want to see where a method is defined do `Ctrl-]` and to go back to your
  original file simply `Ctrl-t`.


## TODO

## System control
* Exec management by user/group

### Go CLIs
* Add DNS server 
* Find LAN connected devices 
* Workspace synchronization
