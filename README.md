# TD.Backoffice.API_DbContext
Repositorio para versionar el código del DbContext  del proyecto TranSPEi_ApiModGes
Proyecto TD.Backoffice.API_DbContext

	1.- Crear proyecto de libreria del DbContext:
		dotnet new classlib -n TD.Backoffice.API_DbContext
	2.- Configurar dependencias:
		dotnet add package Microsoft.EntityFrameworkCore --version 8.0.0
		dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 8.0.0
		dotnet add package Microsoft.EntityFrameworkCore.Design --version 8.0.0
	3.- Agregar repositorio para registar la libreria

		dotnet nuget add source --username FranciscoLM01 --password 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 --store-password-in-clear-text --name github "https://nuget.pkg.github.com/FranciscoLM01/index.json"

	3.- Compilar
		dotnet build
	4.- Publicar la libreria:
		dotnet pack --configuration Release
		Nota: esta libreria se encuentra en TdPlusDbContext.Gestion\bin\Release\TD.Backoffice.API_DbContext.1.0.0.nupkg

	6.- Subir la libreria repositorio con githut

		dotnet nuget push "bin/Release/TD.Backoffice.API_DbContext.1.0.0.nupkg" --api-key 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 --source "github"

Proyecto TranSPEi_ApiModGes
	
	1.- Añadir la libreria repositorio con githut

	dotnet nuget add source --username FranciscoLM01 --password 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 --store-password-in-clear-text --name github "https://nuget.pkg.github.com/FranciscoLM01/index.json"

	2.- Agregar la libreria a las dependencias 
		Ubicar el archivo Directory.Packages.props y agregar la linea:
		<ItemGroup>
				PackageVersion Include="TD.Backoffice.API_DbContext" Version="1.0.0" />
		</ItemGroup>
	3.- Agregar la libreria TD.Backoffice.API_DbContext.1.0.0.nupkg con:
		<ItemGroup>
		 	<PackageReference Include="TD.Backoffice.API_DbContext" />
		</ItemGroup>

		a los proyectos:

		 TranSPEiApiModGes.Infrastructure, 
		 TranSPEiApiModGes.Domain
		 TranSPEiApiModGes.Api 

	4.- Ejecutar los siguientes comandos:
		Abrimos el cmd y nos dirigimos a D:\mipc\nube\OneDrive\PN\CODIGO\repo\TranSPEi_ApiModGes\src\TranSPEiApiModGes y ejecutamos los siguientes comandos:
			dotnet restore
			dotnet build
			dotnet run
