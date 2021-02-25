#!/bin/bash

cd C:\
mkdir C:\feitopeloscript3

cd C:\Windows\System32\Sysprep
sysprep /oobe /generalize /shutdown /unattend:C:\unattend.xml
Restart-computer

Add-WindowsFeature Web-Server
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Hello World from host $($env:computername) 2232!"

Restart-computer
