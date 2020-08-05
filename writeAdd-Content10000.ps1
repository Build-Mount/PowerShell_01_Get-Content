#ƒtƒ@ƒCƒ‹‘‚«‚İ‚·‚éScript2

function writedByAc($inFile) {
	cat $inFile -ReadCount 10000 | %{ac ".\output.txt" -value $_}
}

#Main Proc
$startTime = Get-Date
writedByAc ".\data1.txt"
$endTime = Get-Date
$exeTime = $endTime - $startTime
$exeTime