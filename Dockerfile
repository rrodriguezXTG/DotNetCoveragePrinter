FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /app/scripts/

COPY print-dotnet-coverage.sh /app/scripts/print-dotnet-coverage.sh

RUN apt-get update && \
    apt-get install -y bc && \
    apt-get install -y sed && \
    dotnet tool install --tool-path . dotnet-reportgenerator-globaltool && \
    chmod +x print-dotnet-coverage.sh

