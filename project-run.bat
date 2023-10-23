REM run this to download the files and compile everything
@echo on

set GRADLE_USER_HOME=.\gradle-dependencies
call gradlew.bat test
pause
