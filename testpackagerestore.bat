rmdir /S /Q %~dp0packages
msbuild %~dp0src\PaketTestApp\PaketTestApp.csproj

@rem If the assembly is signed then the targets file from the StrongNamer package was included correctly
sn -T %~dp0src\PaketTestApp\bin\Debug\Octokit.dll