#ƒtƒ@ƒCƒ‹‘‚«‚İ‚·‚éScript

function writedByAc($inFile) {
	cat $inFile -ReadCount 1 | ac ".\output.txt" -Value $_
}

#Main Proc
$startTime = Get-Date
writedByAc ".\data1.txt"
$endTime = Get-Date
$exeTime = $endTime - $startTime
$exeTime