$edgeHistoryPath = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\History"
# Load the SQLite module
Import-Module SQLite
# Open the Edge history database
$connection = Open-SQLiteConnection -DataSource $edgeHistoryPath
# Query the browsing history
$query = "SELECT url, title, last_visit_time FROM urls ORDER BY last_visit_time DESC"
$history = Invoke-SQLiteQuery -Connection $connection -Query $query
# Convert the last_visit_time from Webkit timestamp to DateTime
foreach ($entry in $history) {
    $entry.last_visit_time = [DateTime]::FromFileTimeUtc($entry.last_visit_time * 10 + 116444736000000000)
}
# Print the browsing history
$history | Format-Table -Property url, title, last_visit_time
# Close the connection
$connection.Close()