# Bash Basics

to debug over the bash script use -> 

```bash
bash -x ./___.sh
```
This interprets what each line does in order to look over which line consist of the bug precisely.

_To debug inside shell script (gives similar output) ->_

write '-x' with local bash file looker

```bash
#! /usr/bin/bash -x
```

or directly use, "set" operation in the script

```bash
#! /usr/bin/bash 
set -x # activate debugging from this line
set +x # deactivate debugging from this line
```