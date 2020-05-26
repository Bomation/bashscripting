# Case

{% page-ref page="../variabeln/optarg-getopts.md" %}

```aspnet
<variable>=$1

case <variable> in
    <param.1>|<param.1a>) <action1> ;;
    <param.2>) <action2> ;;
    <param.3>) <action3> ;;
    <param.4>) <action4> ;;
    *) <defaultaction> ;;
esac

#example
while getopts abc:D: opt
do
    case $opt in
        a) echo "Option -a";;
        b) echo "Option -b";;
        c) echo "Option -c : ($OPTARG)";;
        D) echo "Option -D : ($OPTARG)";;
        *) echo "$opt" : ungültige Option;;
    esac
done
```

{% hint style="info" %}
abc:D: - die ":" bedeutet dass ein Wert nach "-c" und "-D" verlangt wird.
{% endhint %}

