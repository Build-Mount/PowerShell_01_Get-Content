#catの-readcountの動作確認3

$global:i=0

function f ([Parameter(ValueFromPipeline=$true)] $param) {
	Process {
		Write-Host "count:"$i
		$i++
		return $param
	}
}

cat ".\test1.txt" -ReadCount 3 | f | % {Write-Host "Length"$_.Length":"$_}

