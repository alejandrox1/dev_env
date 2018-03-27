# Files

* Get all file extensions
  ```
  find . -type f -name '*.*' | awk -F . '{print $NF}' | sort | uniq -u
  ```

* Searching through source code
  ```
  vi -p `egrep -ir "_NR_execve" | egrep -o 'x86.*\.[a-zA-Z]' | uniq`
  ```

  another option,
  ```
  egrep -ir "common.h" | sort | cut -d: -f1 | uniq
  ```
