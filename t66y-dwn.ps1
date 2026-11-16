# to download a webpage for future review
# carib, DV, fc2, ipon (一本道), heyzo, rhj, smbd, sprd, 小早川怜子, Miri MIZUKI - 水稀みり, 義母, 繼母  


$download_dte = Get-Date -Format "MMddyyyy"
$filename="t66y-$($download_dte).html"
(Invoke-webrequest -URI "https://t66y.com/thread0806.php?fid=2&search=&page=1").Content > $filename

# How to iterate the page number from 2 to 100?
$x = 1
do
{
    (Invoke-webrequest -URI "https://t66y.com/thread0806.php?fid=2&search=&page=$x").Content >> $filename
    $x = $x + 1
}
while ($x -lt 100)
