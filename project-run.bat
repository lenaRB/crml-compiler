REM run this to download the files and compile everything
@echo on

call gradlew.bat translate --args="tests/unit/" --warning-mode all

pause
