# Sample Dockerfile for ASP.NET Core minimal API
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["./", "/src/"]
RUN dotnet restore "./DKGST.Api/DKGST.Api.csproj"
COPY . .
WORKDIR "/src/DKGST.Api"
RUN dotnet build "DKGST.Api.csproj" -c Release -o /app/build
RUN dotnet publish "DKGST.Api.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "DKGST.Api.dll"]
