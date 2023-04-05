################################################################################################
Zitat aus e-mail von Chistian Mohn 2023|03|06:

Die Endung .nc steht fuer das parent grid (1500 m) und .nc.1 fuer das child grid (500 m).
Die Filegroessen sind typischerweise ca 3 GigaByte
*his* sind history files (snaphots - 1 wert pro tag)
*avg* sind taegliche Mittel
Jede Datei enthaelt 60 Tage Modell output, der letzte file in jedem Jahr 65 bzw 66 Tage. Dieses Beispiel enthaelt 60 Tage.
Die entprechenden grid files habe ebenfalls bereitgestellt.
Dann habe ich ein matlab skript, dass fuer jedes vertikale s-level Tiefe in m berechnet (falls notwendig).
