# temp-dotnet-build-repro
Repro for an issue with dotnet restore/dotnet build

The steps below were tested on Ubuntu 14.04 with Docker 1.11.0

## Local build
The following steps work (albeit with some warnings about)

```bash
dotnet restore
dotnet build
```

local dotnet version: 1.0.0-rc2-002543

## Docker build
Building the Dockerfile (`docker build .`) fails with

```
/app/project.lock.json(1,0): warning NU1006: Dependencies in project.json were modified. Please run "dotnet restore" to generate a new lock file.

```

Docker image dotnet version: 1.0.0-rc2-002543

(obtained by adding `RUN "dotnet --version"` as a docker 

