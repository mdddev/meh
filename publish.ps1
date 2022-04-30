param(
    [string]$version,
    [string]$github,
    [string]$nuget
)

# dotnet nuget add source https://nuget.pkg.github.com/mdddev/index.json --name mdddev
# dotnet nuget push ./src/bin/Release/"meh.$version.nupkg" --api-key $gh --source mdddev
dotnet nuget push ./src/bin/Release/"meh.$version.nupkg" -Source 'https://nuget.pkg.github.com/mdddev/index.json' --api-key $ghithub
dotnet nuget push ./src/bin/Release/"meh.$version.nupkg" -Source 'https://api.nuget.org/v3/index.json' --api-key $nuget