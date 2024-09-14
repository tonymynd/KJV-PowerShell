# KJV PowerShell Module

This PowerShell module allows you to access the King James Version (KJV) of the Bible directly from your terminal.

## Installation

To get started, clone the repository and import the module into your PowerShell session.

### Steps

1. Clone this repository:

```bash
git clone https://github.com/tonymynd/KJV-PowerShell.git
```

2. Change directory to the repository folder:

```bash
cd KJV-PowerShell/bible
```

3. Import the PowerShell module:

```powershell
Import-Module .\bible.psm1
```

4. Confirm that the module is loaded by running:

```powershell
Get-Command -Module bible
```

You should see the `Read-Bible` function listed.

## Usage

Once the module is imported, you can read any Bible verse by using the `Read-Bible` function. Here's an example:

```powershell
Read-Bible -Book "John" -Chapter 3 -Verse 16
```

Output:

```
For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.
```

## Adding More Verses

To expand the module with more Bible verses, follow these steps:

1. Open the `bible.psm1` file in any text editor.
2. Add new entries to the `$bible` hashtable in the following format:

```powershell
$bible = @{
    "John" = @{
        3 = @{
            16 = "For God so loved the world, ..."
        }
    }
    # Add more books, chapters, and verses here
}
```

3. Save the file and re-import the module:

```powershell
Remove-Module bible
Import-Module .\bible.psm1
```

## License

This module is in the public domain.
