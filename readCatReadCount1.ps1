#�t�@�C���ǂݍ��݂���Script

function readByCat($inFile) {
	cat $inFile -ReadCount 1 >> ".\output.txt"
}

#Main Proc
$startTime = Get-Date
readByCat ".\data1.txt"
$endTime = Get-Date
$exeTime = $endTime - $startTime
$exeTime