@echo off
:: Batch  made to hash a password using SHA-256 algorithm

:: Prompt the user for a password
set /p password=Enter your password: 

:: Generate the SHA-256 hash using Python
echo import hashlib > temp.py
echo password = "%password%" >> temp.py
echo password_hash = hashlib.sha256(password.encode()).hexdigest() >> temp.py
echo print("SHA-256 Hash:", password_hash) >> temp.py

:: Run the Python script and capture the output
for /f "delims=" %%a in ('python temp.py') do set hash_output=%%a

:: Display the hashed password
echo %hash_output%

:: Clean up the temporary Python script
del temp.py

pause