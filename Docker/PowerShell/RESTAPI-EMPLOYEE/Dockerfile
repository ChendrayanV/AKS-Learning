FROM mcr.microsoft.com/powershell:latest

WORKDIR /usr/src/app/

COPY . .    

RUN pwsh -c 'Install-Module Pode -force'

CMD [ "pwsh", "-c", "cd /usr/src/app; ./employee-rest-api.ps1" ]