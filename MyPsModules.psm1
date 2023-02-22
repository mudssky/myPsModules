

Get-ChildItem -Recurse -Path  (Join-Path $PSScriptRoot 'src'  ) -Filter *.ps1 | ForEach-Object {
	Import-Module $_.FullName
}


function Test() {
	echo 'test'
}

Export-ModuleMember -Function *