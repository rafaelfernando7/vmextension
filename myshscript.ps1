#!/bin/bash

cd C:\
mkdir C:\feitopeloscript4

cd C:\Windows\System32\Sysprep
c:\windows\system32\sysprep\sysprep.exe /oobe /generalize /shutdown /unattend:C:\unattend.xml
Restart-computer

Add-WindowsFeature Web-Server
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Hello World from host $($env:computername) 223222!"

Restart-computer
