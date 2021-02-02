$token = "<YOUR_TOKEN>"
$url = "https://www.timecamp.com/third_party/api/timer/api_token/$token"

$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Accept", "application/json")
$headers.Add("Content-Type", "application/json")

$body = "{
`n    `"action`": `"status`"
`n}"

$response = Invoke-RestMethod $url -Method 'POST' -Headers $headers -Body $body

$timer_id = $response.timer_id

$body = "{
`n    `"action`": `"stop`",
`n    `"timer_id`": $timer_id
`n}"


$response = Invoke-RestMethod $url -Method 'POST' -Headers $headers -Body $body
