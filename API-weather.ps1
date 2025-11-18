$uri = " https://api.open-meteo.com/v1/forecast?latitude=48.8566&longitude=2.3522&current_weather=true"


$response = Invoke-RestMethod -Uri $uri -Method Get

$response

$CW = $response.current_weather

$CW_U = $response.current_weather_units


