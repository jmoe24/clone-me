#!/bin/bash

read -p "Please enter your name: " name

STEP1_STRING="cGxlYXNlIGdvIGhlcmUgYW5kIGNvbXBsZXRlIGEgMiBtaW51dGUgdGVzdDogaHR0cHM6Ly93d3cudHlwaW5ndGVzdC5jb20vdGVzdC5odG1sP21pbnV0ZXM9MiZ0ZXh0ZmlsZT1tZWRpdW1UZXh0LnR4dCZtb2RlPXNlbnQmcmVzdWx0X3VybD1yZXN1bHQuaHRtbCZidD0wJmd0PW5vcm1hbA=="
STEP2_STRING="Z29vZCBqb2IuIFBsZWFzZSBnbyBoZXJlIGZvciBhZGRpdGlvbmFsIHRlY2huaWNhbCBxdWVzdGlvbnM6IGh0dHBzOi8vaXNpbnRlcnZpZXdxdWVzdGlvbnMuejE5LndlYi5jb3JlLndpbmRvd3MubmV0Lw=="

STEP1_ACTION="Step 1: ${name}, $(base64 -d <<< ${STEP1_STRING})"
STEP2_ACTION="Step 2: ${name}, $(base64 -d <<< ${STEP2_STRING})"

echo $STEP1_ACTION
echo $STEP2_ACTION