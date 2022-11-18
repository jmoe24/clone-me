#!/usr/bin/python3
# -*- coding: utf-8 -*-

import base64

name = input("Please enter your name: ")
step1_string = "cGxlYXNlIGdvIGhlcmUgYW5kIGNvbXBsZXRlIGEgMiBtaW51dGUgdGVzdDogaHR0cHM6Ly93d3cudHlwaW5ndGVzdC5jb20vdGVzdC5odG1sP21pbnV0ZXM9MiZ0ZXh0ZmlsZT1tZWRpdW1UZXh0LnR4dCZtb2RlPXNlbnQmcmVzdWx0X3VybD1yZXN1bHQuaHRtbCZidD0wJmd0PW5vcm1hbA=="
step2_string = "Z29vZCBqb2IuIFBsZWFzZSBnbyBoZXJlIGZvciBhZGRpdGlvbmFsIHRlY2huaWNhbCBxdWVzdGlvbnM6IGh0dHBzOi8vaXNpbnRlcnZpZXdxdWVzdGlvbnMuejE5LndlYi5jb3JlLndpbmRvd3MubmV0Lw=="

step1_bytes = step1_string.encode("UTF-8")
step2_bytes = step2_string.encode("UTF-8")

step1_string = base64.b64decode(step1_bytes)
step2_string = base64.b64decode(step2_bytes)
step1_string_bytes = base64.b64decode(step1_bytes)
step2_string_bytes = base64.b64decode(step2_bytes) 
step1_string_clear = step1_string_bytes.decode("UTF-8")
step2_string_clear = step2_string_bytes.decode("UTF-8")

print(f"Step 1: {name}, {step1_string_clear}")
print(f"Step 2: {name}, {step2_string_clear}")