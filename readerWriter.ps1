#ÉtÉ@ÉCÉãì«Ç›çûÇ›Ç∑ÇÈScript

function readByReader($inFile) {
	$enc = [Text.Encoding]::GetEncoding("Shift_JIS")
	$outpath = $PSScriptRoot + "\output.txt"
	$sr = New-Object System.IO.StreamReader($inFile, $enc)
	$sw = New-Object System.IO.StreamWriter($outpath , $true, $enc)
	while(($line = $sr.ReadLine()) -ne $null) {
		$sw.WriteLine($line)
	}
	$sr.Close()
	$sw.Close()
}

#Main Proc
$startTime = Get-Date
$path = Split-Path -Parent $MyInvocation.MyCommand.Path
$i = $path + "\data1.txt"

readByReader $i
$endTime = Get-Date
$exeTime = $endTime - $startTime
$exeTime