@echo off
setlocal

:: ���ܿ�J commit �T��
set /p COMMIT_MSG=�п�J�������������]�i�ť� Enter ���L�^: 

:: �Ȧs�Ҧ��ܧ�
git add .

:: �p�G����J commit �T���A�N���� commit
if not "%COMMIT_MSG%"=="" (
    git commit -m "%COMMIT_MSG%"
) else (
    echo ����J���������A���L commit
)

:: ���� push
git push

endlocal
pause