PowerShell function to interact with the new Bing Web Search API on Azure
==========================================================


You need a Bing Searcy account key.
Account keys are used by applications to access Windows Azure Marketplace dataset subscriptions.
https://datamarket.azure.com/
---------------------------------------------------------------------------------

I set the following in my PowerShell environment:

$env:BingAPIKey= '0n1HWs....8nxzQcW0g='


Here's how you can extract the titles from a query.
---------------------------------------------------

```PowerShell
(Invoke-BingQuery PowerShell).Title