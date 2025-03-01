$installPrograms = '.\install_script.ps1'

Invoke-Expression $[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-Expression "& { $(Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/mrpond/BlockTheSpot/master/install.ps1') } -UninstallSpotifyStoreEdition -UpdateSpotify"

Invoke-Expression (Invoke-RestMethod 'https://community.chocolatey.org/install.ps1')

Invoke-Expression $installPrograms