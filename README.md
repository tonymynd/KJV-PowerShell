# KJV PowerShell Module

This PowerShell module provides easy access to the King James Version (KJV) of the Bible using a public Bible API. Retrieve Bible verses directly from your terminal by specifying the book, chapter, and verse.

## Features

- Fetch individual verses from the King James Version of the Bible
- Support for both full book names and common abbreviations
- Proper capitalization of book names in output
- Error handling for invalid book names, chapters, and verses
- Suggestions for similar book names when a typo is detected

## Installation

To install and use the module, follow these instructions:

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/tonymynd/KJV-PowerShell.git
```

### 2. Navigate to the Module Directory

Change to the module directory:

```bash
cd KJV-PowerShell/bible
```

### 3. Import the PowerShell Module

Import the module into your PowerShell session:

```powershell
Import-Module .\bible.psm1
```

Verify that the module is loaded and the function is available:

```powershell
Get-Command -Module bible
```

You should see the `kjv` function listed.

## Usage

With the module imported, you can retrieve any verse from the Bible using the `kjv` function. For example:

```powershell
kjv John 3:16
```

The output will be:

```
John 3:16 - For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.
```

You can use book abbreviations as well:

```powershell
kjv gen 1:1
```

For more detailed output, use the `-Verbose` parameter:

```powershell
kjv heb 4:12 -Verbose
```

## How It Works

The `kjv` function sends a request to a public Bible API to fetch the specified verse. It handles book name recognition, including abbreviations, and provides error messages for invalid inputs or API issues.

## Error Handling

The module includes robust error handling:

- If an invalid book name is provided, it suggests similar book names.
- If a chapter or verse is out of range, it provides information about the valid range.
- It handles API errors and provides informative error messages.

## Adding More Features

The module currently supports fetching individual verses from the King James Version. Future enhancements could include:

- Support for different Bible translations
- Ability to fetch entire chapters or passages
- Search functionality for keywords or phrases
- Integration with other Bible study tools or APIs

Contributions and suggestions for improvements are welcome!

## License

This module is released into the **public domain**, allowing anyone to use, modify, and distribute it freely without any restrictions.

## Acknowledgements

This module uses a public Bible API to retrieve verse data. We are grateful to the providers of this API for making Bible content freely accessible. This code and readme file was made with the help from de paid service of Claude.AI Proffesional.

## Feedback and Contributions

If you encounter any issues, have suggestions for improvements, or would like to contribute to the project, please open an issue or submit a pull request on the GitHub repository.
