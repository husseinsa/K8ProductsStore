FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY ["/BackEndAPIs.csproj", "BackEndAPIs/"]
RUN dotnet restore "BackEndAPIs/BackEndAPIs.csproj"

COPY . .
WORKDIR /src
RUN dotnet build "BackEndAPIs.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "BackEndAPIs.csproj" -c Release -o /app


FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
ENV ASPNETCORE_ENVIRONMENT Development
ENV ProductstoreDatabaseSettings__ConnectionString mongodb://shop-db:27017
ENV ProductstoreDatabaseSettings__DatabaseName productsstore
EXPOSE 80

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "BackEndAPIs.dll"]