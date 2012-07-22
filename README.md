PowerShell and the new Bing Web Search API on Azure
===================================================

Thanks to Mark Watson posting his Java/Clojure version. https://github.com/mark-watson/bing_search_java

You need a Bing Search account key.
https://datamarket.azure.com/

Account keys 
-------------

Account keys are used by applications to access Windows Azure Marketplace dataset subscriptions.

I set the following in my PowerShell environment:

$env:BingAPIKey= '0n1HWs....8nxzQcW0g='


Extract titles from a query
---------------------------

```PowerShell
(Invoke-BingQuery PowerShell).Title
```
    Windows PowerShell - Wikipedia, the free encyclopedia
    Powershell.com - Powershell Scripts, Tips and Resources
    Windows Management Framework (Windows PowerShell 2.0, WinRM 2.0 ...
    Windows PowerShell - Microsoft Corporation: Software, Smartphones ...
    Getting Started with Windows PowerShell - Microsoft Corporation ...
    Windows PowerShell Blog - Site Home - MSDN Blogs
    [...]
    Manning: Windows PowerShell in Action - Manning Publications Co.
    PowerShell Tips and Tricks - Computerworld

Get the Raw data
----------------
Work with the actual returned JSON that has been converted to PowerShell objects.

```PowerShell
Invoke-BingQuery Powershell -Raw
```
    d
    -
    @{results=System.Object[]; __next=https://api.datamarket.azure.com/Data.ashx/Bing/Search/Web?Query='Powershell'&$ski...