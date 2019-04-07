# PSDevtools

Table of contents:

- [Overview](#overview)
- [Versions](#versions)
- [Installation](#installation)
- [Using PSDevtools](#using-PSDevtoolst)

## Overview

When developing on Windows, I keep a few powershell consoles open (I use [conemu][conemu-link]) and perform a lot of actions from the command-line. PSDevtools is a set of small command-line functions that I find helpful while working like this.

## Versions

### PSDevtools v1.0

- Initial version.
- Includes Open-Solution function.

## Installation

### Prerequisites

Before installing PSDevtools make sure the following prerequisites have been met.

1. Windows PowerShell 5.x

   Check your PowerShell version by executing `$PSVersionTable.PSVersion`.

2. On Windows, script execution policy must be set to either `RemoteSigned` or `Unrestricted`.
   Check the script execution policy setting by executing `Get-ExecutionPolicy`.
   If the policy is not set to one of the two required values, run PowerShell as Administrator and
   execute `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm`.

### Installing PSDevtools via PowerShellGet on and Windows

PSDevtools is available on the [PowerShell Gallery][psgallery-site] and can be installed using the PowerShellGet module.

1. Start Windows PowerShell 5.x

2. Execute one of the following two commands from an elevated PowerShell prompt,
   depending on whether (A) you've never installed PSDevtools, or (B) you've already installed a previous version:

    ```powershell
    # (A) You've never installed PSDevtools from the PowerShell Gallery
    #
    # NOTE: If asked to trust packages from the PowerShell Gallery, answer yes to continue installation of PSDevtools
    # NOTE: If the AllowPrerelease parameter is not recognized, update your version of PowerShellGet to >= 1.6 e.g.
    #       Install-Module PowerShellGet -Scope CurrentUser -Force -AllowClobber

    PowerShellGet\Install-Module PSDevtools -Scope CurrentUser -AllowPrerelease -Force
    ```

    OR

    ```powershell
    # (B) You've already installed a previous version of PSDevtools from the PowerShell Gallery
    PowerShellGet\Update-Module PSDevtools
    ```

### Installing PSDevtools Manually

If you need to test/debug changes prior to contributing here, or would otherwise prefer to install PSDevtools without
the aid of a package manager, you can execute `Import-Module <path-to-src\PSDevtools.psd1>`.  For example, if you
have git cloned PSDevtools to `~\git\PSDevtools` you can import this version of PSDevtools by executing
`Import-Module ~\git\PSDevtools\src\PSDevtools.psd1`.

## Using PSDevtools

After you have installed PSDevtools, you can use the following functions.

### Open-Solution

Provided you have associated .sln files with Visual Studio, you can run the command

```
Open-Solution
```

or its alias
```
sln
```

from within the directory containing the solution file, and the solution will be opened in Visual Studio.


[conemu-link]: https://conemu.github.io/
[psgallery-img]:   https://img.shields.io/powershellgallery/dt/PSDevtools.svg
[psgallery-site]:  https://www.powershellgallery.com/packages/PSDevtools


