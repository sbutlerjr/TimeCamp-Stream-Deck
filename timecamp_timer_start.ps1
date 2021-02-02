$task=$args[0]

$token = "<YOUR_TOKEN>"
$url = "https://www.timecamp.com/third_party/api/timer/api_token/$token"

$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Accept", "application/json")
$headers.Add("Content-Type", "application/json")

$body = "{
`n    `"action`": `"start`",
`n    `"task_id`": $task
`n}"

$response = Invoke-RestMethod $url -Method 'POST' -Headers $headers -Body $body
