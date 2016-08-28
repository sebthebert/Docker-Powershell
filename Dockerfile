FROM ubuntu

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y curl libunwind8 libicu55

RUN curl -L -O https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb \
    && dpkg -i powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb \
    && rm -f powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb

ENTRYPOINT powershell
