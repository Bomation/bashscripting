# Arrays

### Declare Arrays

```aspnet
declare -a <array>
<array>=(<value1> <value2> <value3>)
array[<index>]=<value>

unset <array>
```

### Adding Array

```aspnet
<array>+=(<value>)
```

### Show Array content

```aspnet
echo ${<array>[@]}    #Show whole content
echo ${#<array>[@]}   #Show index count
echo ${#<array>[3]}   #Show length of index 3
```

### I DONT GET IT

• Die eingebaute Variable @ ist ein Array. Es enthält alle Kommandozeilen-Argumente   
• Schreiben Sie ein Skript, das in einer for-Schleife die Elemente von $@ durchläuft und für jedes Argument prüft:   
– Ob es ein Name einer gültigen Datei ist   
– Ob Sie eine normale Datei ist   
– Ob Sie ein Verzeichnis ist   
– Ob Sie ein symbolischer Link ist 

• Geben Sie für jeden Fall eine aussagekräftige Meldung aus  
• Assoziative Arrays definieren und verarbeiten

