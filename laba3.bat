@echo off
setlocal

find /c "{" %1 > tmp1.txt
find /c "}" %1 > tmp2.txt

fc tmp1.txt tmp2.txt > nul
if ERRORLEVEL 1 goto eq

echo equal
for /f "tokens=1-3 delims= " %%a in (tmp1.txt) do ( echo total %%c )
goto end


:eq
echo not equal
for /f "tokens=1-3 delims= " %%a in (tmp1.txt) do ( echo open %%c )
for /f "tokens=1-3 delims= " %%a in (tmp2.txt) do ( echo close %%c )

:end
