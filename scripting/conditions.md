# Conditions

### Conditions

| Expression | Description |
| :--- | :--- |
| `[-e $datei]` | Existens |
| `[-f $datei]` | Datei |
| `[-x $datei]` | Ausführbarkeit |
| `[-d $datei]` | Verzeichnis |

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

