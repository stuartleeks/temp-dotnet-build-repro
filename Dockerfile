FROM microsoft/dotnet-preview


COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]

RUN ["dotnet", "build"]
RUN ["dotnet", "--version"]

EXPOSE 5000
ENTRYPOINT ["dotnet", "run"]
