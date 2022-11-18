$name= Read-Host -Prompt "Please enter your name"

$step1_string = "cGxlYXNlIGdvIGhlcmUgYW5kIGNvbXBsZXRlIGEgMiBtaW51dGUgdGVzdDogaHR0cHM6Ly93d3cudHlwaW5ndGVzdC5jb20vdGVzdC5odG1sP21pbnV0ZXM9MiZ0ZXh0ZmlsZT1tZWRpdW1UZXh0LnR4dCZtb2RlPXNlbnQmcmVzdWx0X3VybD1yZXN1bHQuaHRtbCZidD0wJmd0PW5vcm1hbA=="
$step2_string = "Z29vZCBqb2IuIFBsZWFzZSBnbyBoZXJlIGZvciBhZGRpdGlvbmFsIHRlY2huaWNhbCBxdWVzdGlvbnM6IGh0dHBzOi8vaXNpbnRlcnZpZXdxdWVzdGlvbnMuejE5LndlYi5jb3JlLndpbmRvd3MubmV0Lw=="

$step1_string_clear = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($step1_string))
$step2_string_clear = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($step2_string))

Write-Output "Step 1: $name, $step1_string_clear"
Write-Output "Step 2: $name, $step2_string_clear"