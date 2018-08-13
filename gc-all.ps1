cd ..
Get-ChildItem -Recurse | where {Test-Path $_/.git} | ForEach-Object -Process {cd $_; git gc --aggressive; cd ..}
