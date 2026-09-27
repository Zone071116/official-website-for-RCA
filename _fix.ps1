$f = "E:\Doubao\official-website-for-RCA\src\view\HomePage.vue"
$c = Get-Content $f -Raw -Encoding UTF8
$c = $c.Replace('bg1.png"),' + "`r`n          path: `"`"," + "`r`n          title: '独立自主', 'bg3.png"),' + "`r`n          path: `"`"," + "`r`n          title: '独立自主')
$c = $c.Replace('bg2.png"),' + "`r`n          path: `"`"," + "`r`n          title: '敢为人先', 'bg4.png"),' + "`r`n          path: `"`"," + "`r`n          title: '敢为人先')
$c = $c.Replace('bg1.png"),' + "`n          path: `"`"," + "`n          title: '独立自主', 'bg3.png"),' + "`n          path: `"`"," + "`n          title: '独立自主')
$c = $c.Replace('bg2.png"),' + "`n          path: `"`"," + "`n          title: '敢为人先', 'bg4.png"),' + "`n          path: `"`"," + "`n          title: '敢为人先')
[System.IO.File]::WriteAllText($f, $c, (New-Object System.Text.UTF8Encoding $false))
Write-Output "done"
