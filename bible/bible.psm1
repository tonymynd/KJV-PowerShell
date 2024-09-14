function Read-Bible {
    [CmdletBinding()]
    param (
        [string]$Book = "John",
        [int]$Chapter = 3,
        [int]$Verse = 16
    )

    # Base URL for the Bible API
    $baseUrl = "https://bible-api.com"

    # Construct the request URL
    $url = "$baseUrl/$Book $Chapter:$Verse"

    try {
        # Send the HTTP request
        $response = Invoke-RestMethod -Uri $url -Method Get

        # Check if the response has a verse text
        if ($response -and $response.text) {
            return $response.text
        } else {
            Write-Error "Verse not found or invalid request."
        }
    } catch {
        Write-Error "Error retrieving verse: $_"
    }
}

Export-ModuleMember -Function Read-Bible
