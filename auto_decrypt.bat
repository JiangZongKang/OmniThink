@echo off
setlocal enabledelayedexpansion

:: py 文件解密
echo 正在处理 .py 文件...
for /r %%i in (*.py) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.py"
    del /F /Q "%%~dpni.tmp"
)

:: md 文件解密
echo 正在处理 .md 文件...
for /r %%i in (*.md) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.md"
    del /F /Q "%%~dpni.tmp"
)

:: txt 文件解密
echo 正在处理 .txt 文件...
for /r %%i in (*.txt) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.txt"
    del /F /Q "%%~dpni.tmp"
)

:: sh 文件解密
echo 正在处理 .sh 文件...
for /r %%i in (*.sh) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.sh"
    del /F /Q "%%~dpni.tmp"
)

:: sample 文件解密
echo 正在处理 .sample 文件...
for /r %%i in (*.sample) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.sample"
    del /F /Q "%%~dpni.tmp"
)

:: idx 文件解密
echo 正在处理 .idx 文件...
for /r %%i in (*.idx) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.idx"
    del /F /Q "%%~dpni.tmp"
)

:: pack 文件解密
echo 正在处理 .pack 文件...
for /r %%i in (*.pack) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.pack"
    del /F /Q "%%~dpni.tmp"
)

:: rev 文件解密
echo 正在处理 .rev 文件...
for /r %%i in (*.rev) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.rev"
    del /F /Q "%%~dpni.tmp"
)

:: gif 文件解密
echo 正在处理 .gif 文件...
for /r %%i in (*.gif) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.gif"
    del /F /Q "%%~dpni.tmp"
)

:: png 文件解密
echo 正在处理 .png 文件...
for /r %%i in (*.png) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.png"
    del /F /Q "%%~dpni.tmp"
)

:: jpg 文件解密
echo 正在处理 .jpg 文件...
for /r %%i in (*.jpg) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.jpg"
    del /F /Q "%%~dpni.tmp"
)

:: pyc 文件解密
echo 正在处理 .pyc 文件...
for /r %%i in (*.pyc) do (
    ren "%%i" "%%~ni.tmp"
    copy "%%~dpni.tmp" "%%~dpni.pyc"
    del /F /Q "%%~dpni.tmp"
)

echo 所有文件解密完成！
pause