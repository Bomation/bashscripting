# Exit Code

```text
kali@kali:~$ echo $?
0
```

* `1` - Catchall for general errors
* `2` - Misuse of shell builtins \(according to Bash documentation\)
* `126` - Command invoked cannot execute
* `127` - “command not found”
* `128` - Invalid argument to exit
* `128+n` - Fatal error signal “n”
* `130` - Script terminated by Control-C
* `255\*` - Exit status out of range

