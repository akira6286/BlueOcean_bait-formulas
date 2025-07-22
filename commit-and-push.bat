@echo off
setlocal

:: 提示輸入 commit 訊息
set /p COMMIT_MSG=請輸入本次版本說明（可空白 Enter 跳過）: 

:: 暫存所有變更
git add .

:: 如果有輸入 commit 訊息，就執行 commit
if not "%COMMIT_MSG%"=="" (
    git commit -m "%COMMIT_MSG%"
) else (
    echo 未輸入版本說明，跳過 commit
)

:: 執行 push
git push

endlocal
pause