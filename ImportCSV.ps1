$File1 = "mail.csv"
$File2 = "exp.csv"

Import-Csv $File1 -Delimiter ";" -Encoding default -Header UPN, password | Where-Object { $_ -notmatch "comment" } | Select-Object @{Name='alias';Expression={''}},@{Name='name';Expression={''}} ,* | Foreach-Object { $_.alias = $_.UPN.Split("@")[0]; $_} | Foreach-Object { $_.name = $_.UPN.Split("@")[0]; $_} | Export-Csv $File2 -Delimiter "," -NoTypeInformation -Encoding UTF8