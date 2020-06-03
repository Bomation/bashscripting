# Conditions

### Conditions

| Expression | Description |
| :--- | :--- |
| `[-e $datei]` | Existens |
| `[-f $datei]` | Datei |
| `[-x $datei]` | Ausführbarkeit |
| `[-d $datei]` | Verzeichnis |
| `[[ -z STRING ]]` | Empty string |
| `[[ -n STRING ]]` | Not empty string |
| `[[ STRING == STRING ]]` | Equal |
| `[[ STRING != STRING ]]` | Not Equal |
| `[[ NUM -eq NUM ]]` | Equal |
| `[[ NUM -ne NUM ]]` | Not equal |
| `[[ NUM -lt NUM ]]` | Less than |
| `[[ NUM -le NUM ]]` | Less than or equal |
| `[[ NUM -gt NUM ]]` | Greater than |
| `[[ NUM -ge NUM ]]` | Greater than or equal |
| `[[ STRING =~ STRING ]]` | Regexp |
| `(( NUM < NUM ))` | Numeric conditions |
| `[[ -o noclobber ]]` | If OPTIONNAME is enabled |
| `[[ ! EXPR ]]` | Not |

### Shell Execution

```text
echo "I'm in $(pwd)"
echo "I'm in `pwd`"
```

### Brace Expansion

```text
echo {A,B}.js

{A,B} 	    Same as A B
{A,B}.js 	  Same as A.js B.js
{1..5} 	    Same as 1 2 3 4 5
```

