#!/bin/bash

Add-WindowsFeature Web-Server
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Hello World from host $($env:computername) !"

cd C:\
mkdir C:\feitopeloscript
