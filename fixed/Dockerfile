FROM mcr.microsoft.com/azure-cli
# Download the powershell '.tar.gz' archive
RUN curl -L https://github.com/PowerShell/PowerShell/releases/download/v7.0.2/powershell-7.0.2-linux-alpine-x64.tar.gz -o /tmp/powershell.tar.gz
# Create the target folder where powershell will be placed
RUN mkdir -p /opt/microsoft/powershell/7
# Expand powershell to the target folder
RUN tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/7
# Set execute permissions
RUN chmod +x /opt/microsoft/powershell/7/pwsh
# Create the symbolic link that points to pwsh
RUN ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh
# Add volume
VOLUME [ "/logme" ]
# Add script
ADD ./main.ps1 .
# Start powershell and copy output to volume server.log
CMD set -o pipefail && pwsh main.ps1 -Verbose | tee /logme/server.log