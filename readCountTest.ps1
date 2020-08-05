#catの-readcountの動作確認


cat ".\data1.txt" -ReadCount 3 | Get-Member
cat ".\data1.txt" -ReadCount 1 | Get-Member