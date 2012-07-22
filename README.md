PowerShell function to interact with the new Bing Web Search API on Azure
==========================================================

You need a Bing Searcy account key.
https://datamarket.azure.com/

Account keys 
-------------

Account keys are used by applications to access Windows Azure Marketplace dataset subscriptions.

I set the following in my PowerShell environment:

$env:BingAPIKey= '0n1HWs....8nxzQcW0g='


Here's how you can extract the titles from a query.
---------------------------------------------------

```PowerShell
(Invoke-BingQuery PowerShell).Title
```
    Windows PowerShell - Wikipedia, the free encyclopedia
    Powershell.com – Powershell Scripts, Tips and Resources
    Windows Management Framework (Windows PowerShell 2.0, WinRM 2.0 ...
    Windows PowerShell - Microsoft Corporation: Software, Smartphones ...
    Getting Started with Windows PowerShell - Microsoft Corporation ...
    Windows PowerShell Blog - Site Home - MSDN Blogs
    Scripting with Windows PowerShell
    Windows PowerShell Scripting and Administrative Tools
    Powershell - SS64
    PowerShell Tutorial for Beginners - Introduction | PowerShell Pro!
    What is PowerShell? - Definition from WhatIs.com
    Windows Management Framework Core package (Windows PowerShell 2.0 ...
    PowerShell - James Kovacs' Weblog
    PowerShell 2.0 commands
    Powershell.CA
    Powershell, VB Script, SQL and JavaScript - TechNet IT Pro's and ...
    Microsoft PowerShell variables | Pipeline $_. variable | Examples
    PowerShell Cookbook - John D. Cook
    The PowerShell Guy
    Download: Windows PowerShell 1.0 Installation Package for Windows ...
    PowerShellPack - Home
    Download: Windows PowerShell 1.0 English-Language Installation ...
    PowerShell.nu | Windows PowerShell
    Manning: Windows PowerShell in Action - Manning Publications Co.
    PowerShell Tips and Tricks - Computerworld