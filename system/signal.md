# Signal

{% hint style="info" %}
> Signale werden zur Steuerung von Prozessen verwendet.
{% endhint %}

| Nr. |  Name |  Aktion |  Bemerkung |
| :--- | :--- | :--- | :--- |
| 1 |  SIGHUP |  Ende |  Trennen der Terminalverbindung, siehe auch [Terminal schließen](https://wiki.ubuntuusers.de/Signale/#Beispiele). |
|  2 |  SIGINT |  Ende |  Unterbrechen der Terminalverbindung, siehe auch [Strg+C](https://wiki.ubuntuusers.de/Signale/#Beispiele). |
| 3 |  SIGQUIT |  Dump & Ende |  Unterbrechen der Terminalverbindung und debuggen. |
|  9 |  SIGKILL |  Dump & Ende |  Senden Abbruch und debuggen durch den Kernel, siehe auch [Wichtig](https://wiki.ubuntuusers.de/Signale/#Wichtig). |
| 10 |  SIGUSR1 |  Intern |  Frei zur eigenen Benutzung, sofern in den Programmen integriert, siehe auch [Fortschritt von dd abfragen](https://wiki.ubuntuusers.de/Signale/#Beispiele). |
|  12 |  SIGUSR2 |  Intern |  Frei zur eigenen Benutzung, sofern in den Programmen integriert. |
| 15 |  SIGTERM |  Ende |  Standard bei allen [`kill`-Programmen](https://wiki.ubuntuusers.de/Shell/Befehls%C3%BCbersicht/#Systemueberwachung): Abschließen und beenden des Programms. |
|  18 |  SIGCONT |  Restart |  Ein mit `-SIGSTOP` \(19\) angehaltener Prozess soll weiterlaufen, siehe auch [bg %jobnummer](https://wiki.ubuntuusers.de/Signale/#Beispiele). |
| 19 |  SIGSTOP |  Anhalten |  Der Prozess wird pausiert und kann mit `-SIGCONT` \(18\) wieder gestartet werden. |

