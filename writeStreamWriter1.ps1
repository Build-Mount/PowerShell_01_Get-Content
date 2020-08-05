#ƒtƒ@ƒCƒ‹‘‚«‚İ‚·‚éScript3

$global:enc = [Text.Encoding]::GetEncoding("Shift_JIS")
$global:outpath = $PSScriptRoot + "\output.txt"
$global:sw = New-Object System.IO.StreamWriter($outpath,$true, $enc)

function writedByWriter([Parameter(ValueFromPipeline=$true)] $param) {
	process {
		$sw.WriteLine($param.tostring())
	}
	end {
		$sw.Close()
	}
}

#Main Proc
$startTime = Get-Date
cat ".\data1.txt" -ReadCount 1 | writedByWriter
$endTime = Get-Date
$exeTime = $endTime - $startTime
$exeTime