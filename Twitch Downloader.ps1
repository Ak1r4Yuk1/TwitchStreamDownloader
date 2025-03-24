# Chiedi il link del canale all'utente
Write-Host "Inserisci il link del canale Twitch: "
$channelURL = Read-Host

# URL dell'API da utilizzare
$apiURL = "https://pwn.sh/tools/streamapi.py?url=$channelURL"

# Esegui la richiesta HTTP GET
$response = Invoke-RestMethod -Uri $apiURL -Method Get

# Controlla se 'urls' e '1080p' esistono nella risposta JSON
if ($response.urls -and $response.urls.'1080p') {
    $url1080p = $response.urls.'1080p'
    Write-Host "Nome del file di destinazione (senza estensione): "
    $filename = Read-Host

    # Generare il timestamp
    $timestamp = (Get-Date -Format "yyyy-MM-dd_HH-mm")

    # Concatenare il nome del file, timestamp e l'estensione
    $outputFile = "$filename" + "_" + "$timestamp" + ".mp4"

    # Comando ffmpeg
    ffmpeg -c:a aac -i "$url1080p" "$outputFile"

} else {
    Write-Host "URL 1080p non trovato nella risposta."
}
