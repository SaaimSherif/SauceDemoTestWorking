@echo off
REM Running Behave tests with Allure report generation
behave -f allure_behave.formatter:AllureFormatter -o reports/ features
allure serve reports
pause

REM @echo off
REM Running Behave tests with HTML report generation
REM behave -f html -o reports/report.html
REM pause

REM @echo off
REM Running Behave tests with TXT report generation
REM behave -f plain -o reports/report.txt
REM pause
