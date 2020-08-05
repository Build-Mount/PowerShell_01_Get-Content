#catの-readcountの動作確認2


$i=0; cat ".\test1.txt" -Readcount 3 | % {
	Write-Host $i
	Write-Host "Length:"$_.Length
	foreach ($val in $_) {
		Write-Host $val
	}
	$i++
}


