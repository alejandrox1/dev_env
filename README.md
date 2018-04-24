# Dev Environment

* Format your SRC
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

* Browse through the SRC
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
