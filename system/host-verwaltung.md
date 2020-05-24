# Host Verwaltung

### Systemsprache, Standort und Zeichensatz einstellen:

```text
sudo dpkg-reconfigure locales
```

### Zeitzone einstellen:

```text
sudo dpkg-reconfigure tzdata
```

### Tastatur-Layout einstellen \(nicht über SSH\):

```text
sudo dpkg-reconfigure keyboard-configuration
```

### Oder wenn man es per SSH einstellen will:

```text
sudo nano /etc/default/keyboard
```



```text
hostname
```



