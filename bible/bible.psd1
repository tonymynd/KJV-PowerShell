@{
    RootModule = 'bible.psm1'
    Author = 'Jose Antonio Garciarivas Gutierrez <tonymynd@hotmail.com>'
    CompanyName = 'Public Domain'
    ModuleVersion = '0.1'
    GUID = '9c4431a5-c64c-4316-a421-88d6d68a33c6'
    Copyright = 'Public Domain'
    Description = 'The King James Version (KJV) of the Bible provided as a PowerShell module.'
    FunctionsToExport = @('kjv')
    AliasesToExport = @()
    VariablesToExport = @()
    PrivateData = @{
        PSData = @{
            Tags = @('bible', 'kjv', 'christian')
            LicenseUri = 'Public Domain'
            ProjectUri = 'https://github.com/tonymynd/KJV-PowerShell'
            IconUri = ''
            ReleaseNotes = @'
'@
        }
    }
}
