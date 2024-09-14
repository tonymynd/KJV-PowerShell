function Read-Bible {
    [CmdletBinding()]
    param (
        [string]$Book = "John",
        [int]$Chapter = 3,
        [int]$Verse = 16
    )

    $bible = @{
        "John" = @{
            3 = @{
                16 = "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life."
            }
        }
        # Add more books, chapters, and verses here as needed.
    }

    if ($bible.ContainsKey($Book) -and $bible[$Book].ContainsKey($Chapter) -and $bible[$Book][$Chapter].ContainsKey($Verse)) {
        return $bible[$Book][$Chapter][$Verse]
    } else {
        Write-Error "Verse not found."
    }
}

Export-ModuleMember -Function Read-Bible

