# TwitchStreamDownloader

Questo script PowerShell ti permette di scaricare le live di Twitch utilizzando `ffmpeg`.

## Prerequisiti

* PowerShell (incluso in Windows)
* [ffmpeg](https://ffmpeg.org/)

## Installazione di ffmpeg

### Tramite Chocolatey

`choco install ffmpeg`

### Tramite Winget

`winget install ffmpeg`

### Installazione manuale

1.  Vai su [ffmpeg](https://ffmpeg.org/download.html).
2.  Scarica la versione per il tuo sistema operativo.
3.  Estrai l'archivio e aggiungi la cartella `bin` al PATH.

### Post-installazione di ffmpeg: Aggiunta al PATH di sistema.

1.  Trova la directory `bin` di `ffmpeg`.
2.  Cerca "variabili d'ambiente di sistema" nel menu di avvio.
3.  Clicca su "Variabili d'ambiente...".
4.  Seleziona "Path" e clicca su "Modifica...".
5.  Clicca su "Nuovo" e aggiungi il percorso di `bin`.
6.  Clicca su "OK".
7.  Verifica: apri PowerShell e digita `ffmpeg -version`.

## Installazione e Utilizzo dello Script

1.  Clona la repository:

    `git clone https://github.com/Ak1r4Yuk1/TwitchStreamDownloader.git`

2.  Entra nella cartella:

    `cd TwitchStreamDownloader`

3.  Esegui lo script:

    * Tramite terminale:

        `powershell TwitchDownloader.ps1`

    * Tramite GUI: clicca destro su `TwitchDownloader.ps1` e seleziona "Esegui con PowerShell".

## Funzionalità

* Download di live di Twitch tramite URL.
* Interfaccia semplice.
* Utilizzo di `ffmpeg`.

## Note

* Connessione internet stabile.
* Il tempo di download dipende dalla lunghezza della live.

## Contributi

Issue o pull request sono benvenute.

## Licenza

MIT
