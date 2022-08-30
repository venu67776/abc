FROM mcr.microsoft.com/dotnet/sdk:3.1 AS builder
RUN mkdir /app
COPY . /root/app
WORKDIR /root/app
RUN dotnet restore
COPY . /root/app
RUN dotnet publish
COPY . /root/app
FROM mcr.microsoft.com/dotnet/aspnet:3.1
RUN     mkdir /app
WORKDIR /app
COPY --from=builder /root/app .
WORKDIR  bin/Debug/netcoreapp3.1/publish/
RUN mkdir Photos
CMD ["dotnet", "WebApplication1.dll"]